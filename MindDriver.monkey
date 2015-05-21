Import junglegui
'Import brl.filestream
'Import reflection

'#REFLECTION_FILTER="MindDriver*|junglegui*"


'#REFLECTION_FILTER="MindDriver|junglegui*"
'Import reflection



'#REFLECTION_FILTER="*"
#REFLECTION_FILTER+="${MODPATH}"
#ANDROID_SCREEN_ORIENTATION = "landscape"

'#REFLECTION_FILTER+="customskin"

Function Main()

	New Game
	If CurScreen > 0 Then
		
		'mainForm.textBox.Visible = False
	Else
		'mainForm.textBox.Visible = True
	EndIf
	
End


Global InfoScreen:Image
Global ProgramScreen:Image
Global DisplayScreen:Image
Global EditorScreen:Image

Global ProgramBtn:Image
Global DisplayBtn:Image
Global EditorBtn:Image
Global InfoBtn:Image

Global CurScreen:Int = 0
Global mainForm:= New ToolBox

Global WavePrg:String
Global WavePrgs:String[]



Class Game Extends App
	Field gui:Gui
	Field background:Image
	
	
	Method OnCreate()
		SetUpdateRate(60)
		EnableAutoSize()
		gui = New Gui
		gui.Renderer = New MySkin
		'Local mainForm:= New ToolBox
		mainForm.InitForm(gui)
		background = LoadImage("home.png")
		
		InfoScreen = LoadImage("home.png")
		ProgramScreen = LoadImage("program.png")
		DisplayScreen = LoadImage("display.png")
		EditorScreen = LoadImage("editor.png")
		'ProgramBtn = LoadImage("sessions.prg")
		ProgramBtn = LoadImage("ProgramB.png")
		
		'Load Program Data
		 
		WavePrg = LoadString("sessions.dat")
		'start = WavePrg.Find("PROGRAM")
		'finish = WavePrg.Find("END")
		'WavePrgs[i] = WavePrg
				
		Local index:Int
		Local pieces:String[]
		Local splt:String[]
		index = 0
		pieces = WavePrg.Split("PROGRAM")
		For Local piece:String = EachIn pieces
			'DrawText(piece, 50, index)
			'crLoc = piece.Find(CHAR_HOME)
			If index > 1 Then
				splt = piece.Split("DESC")
				piece = splt[0]
				mainForm.lst_Programs.Items.AddLast(piece)
			End If
			index += 1
		Next
		
	End
	
	Method OnLoading()
		Cls(255, 255, 255)
		Translate(DeviceWidth / 2, DeviceHeight / 2)
		SetColor(0, 0, 180)
		Local baseRot = Millisecs() / 3 mod 360
		Rotate(baseRot)
		Const max:Int = 6
		For Local i:Int = 0 to max
			SetAlpha(float(i) / float(max))
			DrawOval( -2, - 20, 4, 4)
			Rotate(35)
		Next
	End
	Method OnRender()
		Cls(255, 255, 255)

		'Render a background desktop image:
		

		
		'Cls(0, 0, 0)

		'Render a background desktop image:
		'Local ScaleX:Float = Max(Float(DeviceWidth) / Float(InfoScreen.Width), 1.0)
		'Local ScaleY:Float = Max(Float(DeviceHeight) / Float(InfoScreen.Height), 1.0)
		Local ScaleX:Float = Max(Float(DeviceWidth) / Float(background.Width), 1.0)
		Local ScaleY:Float = Max(Float(DeviceHeight) / Float(background.Height),1.0)
		
		Local tx:Int[]
					
		Local ty:Int[]
		
		
		
		#If TARGET="html5" then
		tx =[39, 260, 39, 205, 39, 185, 39, 138]
			'25, 201,
			'25, 163,
			'25, 142,
			'25, 103]
		ty =[181, 198, 230, 249, 281, 298, 333, 347]
			'131, 145,
			'165, 185,
			'190, 225,
			'230, 260]
		#Else
		tx =[
			55, 364,
			55, 290,
			55, 266,
			55, 188]
		ty =[
			296, 324,
			381, 414,
			460, 490,
			539, 576]
		#EndIf
		'For Local i:int = 0 Until 3
		'		If TouchX(0) > tx[i] And TouchX(0) < tx[i + 1] Then
		'			If TouchY(0) > ty[i] And TouchY(0) < ty[i + 1] Then
		'				CurScreen = i
		'			EndIf
		'		EndIf
		'	Next
		If TouchX(0) > tx[0] And TouchX(0) < tx[1] Then
			If TouchY(0) > ty[0] And TouchY(0) < ty[1] Then
				CurScreen = 1 'PROGRAM
				
			EndIf
		EndIf
		If TouchX(0) > tx[2] And TouchX(0) < tx[3] Then
			If TouchY(0) > ty[2] And TouchY(0) < ty[3] Then
				CurScreen = 2 'DISPLAY
				
			EndIf
		EndIf
		If TouchX(0) > tx[4] And TouchX(0) < tx[5] Then
			If TouchY(0) > ty[4] And TouchY(0) < ty[5] Then
				CurScreen = 3 'EDITOR
			EndIf
		EndIf
		If TouchX(0) > tx[6] And TouchX(0) < tx[7] Then
			If TouchY(0) > ty[6] And TouchY(0) < ty[7] Then
				CurScreen = 0 'INFO
			EndIf
		EndIf
		
	
		
		'SampleForm.progBar.TipText = String(TouchX(0)) + string(TouchY(0))
		'Print ScaleX
		'Print ScaleY
		Select CurScreen
			Case 0 'INFO Screen
				DrawImage(InfoScreen, 0, 0, 0, ScaleX, ScaleY, 0)
				mainForm.textBox.Visible = True
				mainForm.lst_Programs.Visible = False
				mainForm.RunButton.Visible = False
				mainForm.StopButton.Visible = False
			Case 1 ' PROGRAM SCREEN
				DrawImage(ProgramScreen, 0, 0, 0, ScaleX, ScaleY, 0)
				mainForm.textBox.Visible = False
				mainForm.lst_Programs.Visible = True
				mainForm.RunButton.Visible = True
				mainForm.StopButton.Visible = True
			Case 2 'DISPLAY SCREEN
				DrawImage(DisplayScreen, 0, 0, 0, ScaleX, ScaleY, 0)
				mainForm.textBox.Visible = False
				mainForm.lst_Programs.Visible = False
				mainForm.RunButton.Visible = False
				mainForm.StopButton.Visible = False
			Case 3 'EDITOR SCREEN
				DrawImage(EditorScreen, 0, 0, 0, ScaleX, ScaleY, 0)
				mainForm.textBox.Visible = False
				mainForm.lst_Programs.Visible = False
				mainForm.RunButton.Visible = False
				mainForm.StopButton.Visible = False
		End Select
		
		DrawText(string(TouchX(0)), 50, 50)
		DrawText(string(TouchY(0)), 50, 60)
		gui.Render
	End
	
	Method OnUpdate()
	
		'Local start:int
		'Local finish:Int
		'Local crLoc:Int
		
		
		Select CurScreen
			Case 0
			
			Case 1
			
			Case 2
				
					
				'Next
				
			Case 3
			
		End
		
		gui.Update()
	End
	
End



Class MySkin Extends renderer.GuiRenderer

	Method InitRenderer()
		'We modify some systemcolors when the Renderer is activated:
		SystemColors.FormMargin.SetColor(1, 200, 200, 190)
		SystemColors.WindowColor.SetColor(1, 220, 220, 200)
		SystemColors.ButtonBorderColor.SetColor(1, 255, 255, 235)
		SystemColors.ControlFace.SetColor(1, 180, 170, 160)
		SystemColors.HooverBackgroundColor.SetColor(1, 235, 235, 190)
		SystemColors.FocusColor.SetColor(1, 255, 255, 255)
		SystemColors.FormBorder.SetColor(1, 250, 250, 230)
		SystemColors.SelectedItemBackColor.SetColor(1, 200, 200, 180)
		#IF TARGET="html5"
			Gui.systemFont = New bitmapfont.BitmapFont("skinfont_html5.txt")
		
		#ELSE
			Gui.systemFont = New bitmapfont.BitmapFont("skinfont.txt")
			'Gui.systemFont = New bitmapfont.BitmapFont("boldfont.txt")
		#END
	End
	'Field background:Image
	Method DrawFormBackground(status:Int, position:GuiVector2D, size:GuiVector2D, padding:Padding, text:String, context:Control)
		'We modify the way a form is renderer.
		'background = LoadImage("background.jpg")
		'We render the form "main" box:
		SystemColors.FormMargin.Activate()	'Select the form margin color
		SetAlpha(0)'.2)	'Oue new skin has transparent form borders, so we set alpha to 0.2
		DrawRect(position.X, position.Y, size.X, size.Y)	'We draw the form rectangle
		'SetAlpha(1)	'We set alpha back to 1
		'DrawImage(background, 0, 0, 0, 1, 1, 0)
		
		'We render for form caption (header):
		
		'First a small gradient:
		'For Local i:Int = 0 To Gui.systemFont.GetFontHeight
		'	SetAlpha(1 - float(i) / float(Gui.systemFont.GetFontHeight))
		'	DrawLine(position.X, position.Y + i, position.X + size.X, position.Y + i)
		'Next
		'Then the text:
		SetAlpha 0
		Gui.systemFont.DrawText(text, position.X + 1, position.Y + 1)
		
		
		
		'Now we're rendering the form "container" area, where controls are placed:
		Local backcolor:guicolor.GuiColor
		If context = Null Then	'If we're just calling this to be used with systemcolors:
			backcolor = SystemColors.WindowColor
		Else	'If we're caling this to be used with a given real form, we use its background color instead:
			backcolor = context.BackgroundColor
		EndIf
		'background = LoadImage("background.jpg")
		'backcolor = background
		backcolor.Activate
		DrawRect(position.X + padding.Left, position.Y + padding.Top, size.X - padding.Left - padding.Right, size.Y - padding.Top - padding.Bottom)
		
		'Now we're adding a small gradient at the top and at the bottom of the form container area:
		
		SetAlpha(0)
		SystemColors.FormBorder.Activate()
		DrawBox(position, size)
		SetAlpha(1)
	End

	Method DrawButtonBackground(status:Int, position:GuiVector2D, size:GuiVector2D, context:Control)
		Local backColor:GuiColor
		If HasFlag(status, eControlStatus.HOOVER) Then
			If context Then
				backColor = context.HooverColor
			Else
				backColor = SystemColors.HooverBackgroundColor
			EndIf
		Else
			If context Then
				backColor = context.BackgroundColor
			Else
				backColor = SystemColors.ControlFace
			EndIf
		EndIf
		backColor.Activate()
		DrawRect(position.X + 1, position.Y + 1, size.X - 2, size.Y - 2)
	End
	
	
	Method DrawControlBorder(status:Int, position:GuiVector2D, size:GuiVector2D, context:Control)
		If context Then context.BorderColor.Activate() Else SystemColors.ButtonBorderColor.Activate()
		'We draw a square control border on this skin:
		DrawBox(position, size)
	End
	
	Method DrawFocusRect(control:Control, round:Bool = False)
		SystemColors.FocusColor.Activate()
		Local pos:= control.UnsafeRenderPosition()
		Local size:= control.Size
		DrawBox(pos, size)
	End
	
	
	Method DrawCheckBox(status:Int, position:GuiVector2D, size:GuiVector2D, context:Control = Null, checked:Bool = True)
		SystemColors.ControlFace.Activate()
		Local yOffset:Int = size.Y / 2 - CheckBoxSize.Y / 2
		DrawRect(position.X + 1, position.Y + 1 + yOffset, CheckBoxSize.X - 2, CheckBoxSize.Y - 2)
		If HasFlag(status, eControlStatus.HOOVER) Then
			SystemColors.FocusColor.Activate()
		Else
			SystemColors.ButtonBorderColor.Activate()
		EndIf
		
		DrawRoundBox(int(position.X), int(position.Y + yOffset), CheckBoxSize.X, CheckBoxSize.Y)
		If checked Then
			SystemColors.SelectedItemForeColor.Activate()
			SetAlpha(Abs(Sin(Millisecs() / 10.0)))
			'DrawRect(position.X + 4, position.Y + 4 + yOffset, BoxSize - 9, BoxSize - 8)
			DrawOval(position.X + 4, position.Y + 4 + yOffset, CheckBoxSize.X - 8, CheckBoxSize.Y - 7)
			SetAlpha 1
		EndIf
	End


End



Class ToolBox extends form.Form
	Public
	Field textBox:MultilineTextbox

	Field particlesCount:Label
	Field RunButton:Button
	Field StopButton:Button
	
	Field desiredStars:TrackBar
	
	Field colorR:Slider
	Field colorG:Slider
	Field colorB:Slider
	
	Field lst_Programs:ListBox
	
	Field randomizeColors:CheckBox
	Field word:TextField
	
	'Field msgInspector:ListBox
	'	Field debugForm:DebugForm
	

	
	
	
	Method OnInit()
		JungleGuiApplication.gui.ScaleX = 2
		JungleGuiApplication.gui.ScaleY = 2
		'Local height:Int = 0
		'SELF:
		Self.Text = "Mind Driver"
	
		'Self.Position.X = DeviceWidth - Self.Size.X + 715
		'Self.Position.Y = DeviceHeight - Self.Size.Y + 680
		#If TARGET="html5" then
			'Self.Size.X = 830 'Scale 1
			'Self.Size.Y = 560 'Scale 1
			'Self.Position.X = 560 'Scale 1
			'Self.Position.Y = 115 'Scale 1
			
			Self.Size.X = 430 'Scale 2
			Self.Size.Y = 295 'Scale 2
			Self.Position.X = 275 'Scale 2
			Self.Position.Y = 40 'Scale 2
		#Else
			Self.Size.X = 600'1123
			Self.Size.Y = 460'840
			Self.Position.X = 385'790
			Self.Position.Y = 82'215
		#EndIf
		
		
		'Self.TipText = "This is jsut a sample toolbar"
		Self.Name = "ToolBox"
		
		'''
		''' starCount
		'''
		'particlesCount = New Label
		'particlesCount.Parent = self
		'particlesCount.Text = "Particles: ??"
		'particlesCount.AutoAdjustSize = false
		'particlesCount.Position.X = 10
		'particlesCount.Position.Y = 10
		'particlesCount.Size.X = Self.Size.X - Self.Padding.Left - Self.Padding.Right
		'particlesCount.TipText = "This label shows the amount of used particles."
		'particlesCount.Name = "particlesCount"
		'height = GetNextHeight(particlesCount)
		
		'''
		'''RunButton
		'''
		RunButton = New Button
		RunButton.Parent = Self
		RunButton.Text = " RUN "
		'RunButton.Size.Y = 20'explosionButton.Font.GetFontHeight() +30
		RunButton.Position.SetValues(82, 190)
		'RunButton.TipText = "Click here to generate an explosion"
		RunButton.Name = "RunButton"
		RunButton.AdjustSize
		'RunButton.Event_Click.Add(Self, "TEST")
		RunButton.Event_Click.Add(Self, "Button_Clicked")
		'height = GetNextHeight(explosionButton)
		
		'''
		'''StopButton
		'''
		StopButton = New Button
		StopButton.Parent = Self
		StopButton.Text = "STOP"
		StopButton.Position.SetValues(260, 190)
		StopButton.Name = "StopButton"
		StopButton.AdjustSize
		StopButton.Event_Click.Add(Self, "Button_Clicked")
		
		
		
		
		
		'''
		'''desiredStars
		'''
		'Local tmpLabel:Label = New Label
		'tmpLabel.Parent = Self
		'tmpLabel.Position.SetValues(0, -80)
		'tmpLabel.Text = "Release 3-Android ~n __________ ~n~n The term 'brainwaves' entered our popular lexicon shortly after Hans Berger's development of the electroencephalograph ~n (or EEG) in the 1920s.  Berger discovered that certain patterns of electrical activity occurring in the brain closely followed ~n reported 'states' of mind in his subjects, for which he was twice offered the Nobel Prize.  By the end of World War Two, ~n Berger's brainwave technology saw widespread application in the diagnosis of brain injuries, epilepsy, and numerous ~n disorders. The first two brainwave states Berger isolated were alpha and beta states, though others followed quickly as ~n his work gained respect in the international scientific community.  Soon, scientists identified four main brainwave states:~n  alpha states (lucidity, dreaming, meditation), beta (sometimes referred to as 'baseline' waking consciousness, externally focused concentration), theta (deep relaxation), and delta (deep, dreamless sleep). Narcean Technologies ' Mind Driver employs binaural beat encoding coupled with time pulses of light to manually shift brainwave frequencies into the user's desired range.  Through binaural beat encoding, the brain is encouraged to produce the desired frequency range internally by subtracting out the difference in frequencies heard in each ear.  For example, as you read this your brain is producing a frequency in the beta range (14-30 Hz).  In order to encourage a shift into the alpha state, you could introduce a pitch of 451 Hz into one ear and 443 Hz into the other.  Internally, the brain will balance the two inputs by modulating your brainwave frequency to a rate of 8 Hz, thus transitioning you into the alpha range of light meditation.  Further, exploiting the 'frequency following effect' discovered by Gray Walter in the early 1940s using Hans Berger's EEG technology, one can employ regular pulses of light to reinforce the selection of desired brainwave states. Walter was able To experimentally verify the tendency of the brain To modulate its brainwave frequency in harmony with external stimulation with flickering lights.Practical examples of this effect are the tendency For epileptics To experience seizures in response To flashing lights, or (more positively) the dreamy, meditative state commonly entered by individuals sitting around a campfire. At Narcean Technologies, we felt it necessary To place the power To control brainwave states into the hands of every individual.What humanity has sought For millennia in meditation, prayer, even the use of mood - altering chemicals - the power To control their own mental states - we harnessed the technology of the 21 st century To provide.Whether employed as meditation aid, learning tool, or just To pep yourself up after a stressful workday, the Mind Driver at last grants you the precise power of direct mental control. "
		''tmpLabel.Size.Y = 20
		'tmpLabel.AdjustSize.Y
		'tmpLabel.Name = "CountLabel"
		
		'desiredStars = New TrackBar
		'desiredStars.Parent = self
		'desiredStars.Position.SetValues(tmpLabel.Position.X + tmpLabel.Size.X, height)
		'desiredStars.Maximum = 500
		'desiredStars.Minimum = 1
		'height = GetNextHeight(desiredStars)
		'desiredStars.Value = 100
		'desiredStars.Tickfrequency = 50
		'desiredStars.Size.X = self.Size.X - desiredStars.Position.X - 10
		'desiredStars.TipText = "This is the amount of desired particles."
		'desiredStars.Name = "DesiredStars"
		

		'''
		''' red
		'''
		'colorR = New Slider
		'SetSliderValues(colorR, 0, "red", height)
		
		'''
		''' green
		'''
		'colorG = New Slider
		'SetSliderValues(colorG, 1, "green", height)

		'''
		''' blue
		'''
		'colorB = New Slider
		'SetSliderValues(colorB, 2, "blue", height)

		'height = GetNextHeight(colorB)
		
				
		'shapeKind = New ListBox(10, height, Self.Size.X - Self.Padding.Left - Self.Padding.Right - 20, 100, self)
		
		
		#If TARGET="html5" then
			'lst_Programs = New ListBox(165, 44, 472, 328, Self)'scale 1
			lst_Programs = New ListBox(84, 25, 235, 163, Self)'Scale 2
		#Else
			'lst_Programs = New ListBox(400, 88, 200, 400, Self) 'Scale 1
			lst_Programs = New ListBox(125, 42, 250, 260, Self) 'Scale 2
		#EndIf
		lst_Programs.SelectedIndex = 0
		lst_Programs.Name = "lstPrograms"
		lst_Programs.Visible = False
		
		'height = GetNextHeight(lst_Programs)
		
		'''
		'''Randomize
		'''
		'randomizeColors = New CheckBox
		'randomizeColors.Parent = Self
		'randomizeColors.Text = "Randomize colors"
		'randomizeColors.TipText = "Enable or disable randomize colors for particles"
		'randomizeColors.Position.SetValues(10, height)
		'randomizeColors.Size.Y = 18
		'randomizeColors.Name = "RandomizeColors"
		'randomizeColors.Checked = True
		'height = GetNextHeight(randomizeColors)
		
		'tmpLabel = New Label
		'tmpLabel.Parent = self
		'tmpLabel.Position.SetValues(10, height)
		'tmpLabel.Text = "word:"
		'tmpLabel.Name = "LabelWord"
		
		'word = New TextField
		'word.Parent = Self
		'word.Position.Y = -80'557'tmpLabel.Position.Y
		'word.Position.X = 0' 138'tmpLabel.Position.X + tmpLabel.Size.X + 10
		'word.Size.X = 786' Self.Size.X - Self.Padding.Left - Self.Padding.Right - tmpLabel.Size.X - tmpLabel.Position.X * 2
		
		'word.Size.Y = 430' tmpLabel.Size.Y
		'word.Name = "MultilineTextBox"
		'word.AutoAdjustSize = False
		'height = GetNextHeight(tmpLabel)
		
		'word.Text = "Release 3-Android ~n __________ ~n~n The term 'brainwaves' entered our popular lexicon shortly after Hans Berger's development of the electroencephalograph (or EEG) in the 1920s.  Berger discovered that certain patterns of electrical activity occurring in the brain closely followed reported 'states' of mind in his subjects, for which he was twice offered the Nobel Prize.  By the end of World War Two, Berger's brainwave technology saw widespread application in the diagnosis of brain injuries, epilepsy, and numerous disorders. The first two brainwave states Berger isolated were alpha and beta states, though others followed quickly as his work gained respect in the international scientific community.  Soon, scientists identified four main brainwave states:  alpha states (lucidity, dreaming, meditation), beta (sometimes referred to as 'baseline' waking consciousness, externally focused concentration), theta (deep relaxation), and delta (deep, dreamless sleep). Narcean Technologies ' Mind Driver employs binaural beat encoding coupled with time pulses of light to manually shift brainwave frequencies into the user's desired range.  Through binaural beat encoding, the brain is encouraged to produce the desired frequency range internally by subtracting out the difference in frequencies heard in each ear.  For example, as you read this your brain is producing a frequency in the beta range (14-30 Hz).  In order to encourage a shift into the alpha state, you could introduce a pitch of 451 Hz into one ear and 443 Hz into the other.  Internally, the brain will balance the two inputs by modulating your brainwave frequency to a rate of 8 Hz, thus transitioning you into the alpha range of light meditation.  Further, exploiting the 'frequency following effect' discovered by Gray Walter in the early 1940s using Hans Berger's EEG technology, one can employ regular pulses of light to reinforce the selection of desired brainwave states. Walter was able To experimentally verify the tendency of the brain To modulate its brainwave frequency in harmony with external stimulation with flickering lights.Practical examples of this effect are the tendency For epileptics To experience seizures in response To flashing lights, or (more positively) the dreamy, meditative state commonly entered by individuals sitting around a campfire. At Narcean Technologies, we felt it necessary To place the power To control brainwave states into the hands of every individual.What humanity has sought For millennia in meditation, prayer, even the use of mood - altering chemicals - the power To control their own mental states - we harnessed the technology of the 21 st century To provide.Whether employed as meditation aid, learning tool, or just To pep yourself up after a stressful workday, the Mind Driver at last grants you the precise power of direct mental control. "
		
		
		
		
		textBox = New MultilineTextbox
		
		textBox.Position.SetValues(0, 0)
		textBox.Parent = Self
		textBox.Position.X = 0
		textBox.Position.Y = 0
				textBox.Name = "MultilineTextBox"
		'textBox.Text = "Release 3-Android ~n __________ ~n~n The term 'brainwaves' entered our popular lexicon shortly after Hans Berger's development of the electroencephalograph (or EEG) in the 1920s.  Berger discovered that certain patterns of electrical activity occurring in the brain closely followed reported 'states' of mind in his subjects, for which he was twice offered the Nobel Prize.  By the end of World War Two, Berger's brainwave technology saw widespread application in the diagnosis of brain injuries, epilepsy, and numerous disorders. The first two brainwave states Berger isolated were alpha and beta states, though others followed quickly as his work gained respect in the international scientific community.  Soon, scientists identified four main brainwave states:  alpha states (lucidity, dreaming, meditation), beta (sometimes referred to as 'baseline' waking consciousness, externally focused concentration), theta (deep relaxation), and delta (deep, dreamless sleep). Narcean Technologies ' Mind Driver employs binaural beat encoding coupled with time pulses of light to manually shift brainwave frequencies into the user's desired range.  Through binaural beat encoding, the brain is encouraged to produce the desired frequency range internally by subtracting out the difference in frequencies heard in each ear.  For example, as you read this your brain is producing a frequency in the beta range (14-30 Hz).  In order to encourage a shift into the alpha state, you could introduce a pitch of 451 Hz into one ear and 443 Hz into the other.  Internally, the brain will balance the two inputs by modulating your brainwave frequency to a rate of 8 Hz, thus transitioning you into the alpha range of light meditation.  Further, exploiting the 'frequency following effect' discovered by Gray Walter in the early 1940s using Hans Berger's EEG technology, one can employ regular pulses of light to reinforce the selection of desired brainwave states. Walter was able To experimentally verify the tendency of the brain To modulate its brainwave frequency in harmony with external stimulation with flickering lights.Practical examples of this effect are the tendency For epileptics To experience seizures in response To flashing lights, or (more positively) the dreamy, meditative state commonly entered by individuals sitting around a campfire. At Narcean Technologies, we felt it necessary To place the power To control brainwave states into the hands of every individual.What humanity has sought For millennia in meditation, prayer, even the use of mood - altering chemicals - the power To control their own mental states - we harnessed the technology of the 21 st century To provide.Whether employed as meditation aid, learning tool, or just To pep yourself up after a stressful workday, the Mind Driver at last grants you the precise power of direct mental control. "
		textBox.Text = "Release 3-Android ~n __________ ~n~n The term 'brainwaves' entered our popular lexicon shortly after Hans Berger's development of the electroencephalograph ~n (or EEG) in the 1920s.  Berger discovered that certain patterns of electrical activity occurring in the brain closely followed ~n reported 'states' of mind in his subjects, for which he was twice offered the Nobel Prize.  By the end of World War Two, ~n Berger's brainwave technology saw widespread application in the diagnosis of brain injuries, epilepsy, and numerous ~n disorders. The first two brainwave states Berger isolated were alpha and beta states, though others followed quickly as ~n his work gained respect in the international scientific community.  Soon, scientists identified four main brainwave states:~n  alpha states (lucidity, dreaming, meditation), beta (sometimes referred to as 'baseline' waking consciousness, externally focused concentration), theta (deep relaxation), and delta (deep, dreamless sleep). Narcean Technologies ' Mind Driver employs binaural beat encoding coupled with time pulses of light to manually shift brainwave frequencies into the user's desired range.  Through binaural beat encoding, the brain is encouraged to produce the desired frequency range internally by subtracting out the difference in frequencies heard in each ear.  For example, as you read this your brain is producing a frequency in the beta range (14-30 Hz).  In order to encourage a shift into the alpha state, you could introduce a pitch of 451 Hz into one ear and 443 Hz into the other.  Internally, the brain will balance the two inputs by modulating your brainwave frequency to a rate of 8 Hz, thus transitioning you into the alpha range of light meditation.  Further, exploiting the 'frequency following effect' discovered by Gray Walter in the early 1940s using Hans Berger's EEG technology, one can employ regular pulses of light to reinforce the selection of desired brainwave states. Walter was able To experimentally verify the tendency of the brain To modulate its brainwave frequency in harmony with external stimulation with flickering lights.Practical examples of this effect are the tendency For epileptics To experience seizures in response To flashing lights, or (more positively) the dreamy, meditative state commonly entered by individuals sitting around a campfire. At Narcean Technologies, we felt it necessary To place the power To control brainwave states into the hands of every individual.What humanity has sought For millennia in meditation, prayer, even the use of mood - altering chemicals - the power To control their own mental states - we harnessed the technology of the 21 st century To provide.Whether employed as meditation aid, learning tool, or just To pep yourself up after a stressful workday, the Mind Driver at last grants you the precise power of direct mental control. "
		#If TARGET="html5" then
			'textBox.AdjustSize.SetValues(790, 520)'Scale 1
			textBox.AdjustSize.SetValues(399, 265)'Scale 2
		#Else
			'textBox.AdjustSize.SetValues(1185, 780)'Scale 1
			textBox.AdjustSize.SetValues(593, 390)'Scale 2
		#EndIf
		'textBox.Size.Y = 120
		'textBox.AutoAdjustSize
		
		
		
		'''
		''' Form size:
		'''
		'Self.Size.Y = height + Padding.Top + Padding.Bottom
	End
	
	
	Method GetNextHeight(control:Control)
		Const Margin:Int = 5
		Return control.Position.Y + control.Size.Y + Margin
	End
	
	
	Method SetSliderValues(slider:Slider, Index:Int, name:String, height:Int)
		slider.Position.SetValues(70, height + Index * 20)
		slider.Parent = Self
		slider.Name = name
		slider.Maximum = 100
		slider.Size.SetValues(Self.Size.X - 70 - 10 - Self.Padding.Left - Self.Padding.Right, 15)
		slider.Maximum = 255
		slider.Value = 255
		Local label:= New Label
		label.Parent = Self
		label.Text = name
		label.Position.SetValues(10, height + Index * 20)
		label.Name = "Label" + name
		
		'We align the label:
		
		label.Position.Y = slider.Position.Y - (label.Size.Y - slider.Size.Y) / 2
		
		'label.Size.Y = 10
		
	End

	Method Button_Clicked(sender:Object, e:MouseEventArgs)
		
		Select sender
			Case StopButton
				RunButton.TextAlign = eTextAlign.LEFT
			Case RunButton
				StopButton.TextAlign = eTextAlign.LEFT
			
				
		End
	End
		
End
