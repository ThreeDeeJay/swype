.class public Lcom/nuance/swype/input/IMEHandlerManager;
.super Ljava/lang/Object;
.source "IMEHandlerManager.java"


# instance fields
.field private IMEHandlerChinese:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

.field private IMEHandlerJapanese:Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;

.field private IMEHandlerKorean:Lcom/nuance/swype/input/korean/KoreanIMEHandler;

.field private mIme:Lcom/nuance/swype/input/IME;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    .line 22
    return-void
.end method

.method public static getStatusBarHeight(Lcom/nuance/swype/input/IME;)I
    .locals 6
    .param p0, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "statusBarHeight":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .local v1, "rectgle":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    .line 99
    .local v0, "dg":Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 100
    const/4 v4, 0x0

    .line 112
    :goto_0
    return v4

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 103
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_1

    .line 104
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 105
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 107
    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_2

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v4, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 110
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v4, v5

    :cond_2
    move v4, v2

    .line 112
    goto :goto_0
.end method


# virtual methods
.method public fastSwitchLanguage(Z)V
    .locals 7
    .param p1, "isImplicit"    # Z

    .prologue
    const/4 v4, 0x6

    const/4 v5, 0x4

    .line 131
    iget-object v6, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v6}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 132
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    const/4 v3, 0x0

    .line 133
    .local v3, "switchRequest":Lcom/nuance/swype/input/LangSwitchAction;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getFastSwitchedOffLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 134
    .local v2, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v2, :cond_3

    .line 136
    new-instance v3, Lcom/nuance/swype/input/LangSwitchAction;

    .end local v3    # "switchRequest":Lcom/nuance/swype/input/LangSwitchAction;
    if-eqz p1, :cond_2

    :goto_0
    invoke-direct {v3, v2, v4}, Lcom/nuance/swype/input/LangSwitchAction;-><init>(Lcom/nuance/swype/input/InputMethods$Language;I)V

    .line 145
    .restart local v3    # "switchRequest":Lcom/nuance/swype/input/LangSwitchAction;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 146
    iget-object v4, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 147
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 149
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 151
    iget-object v4, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4, v3}, Lcom/nuance/swype/input/IME;->switchLanguageAsync(Lcom/nuance/swype/input/LangSwitchAction;)V

    .line 154
    .end local v1    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_1
    return-void

    .end local v3    # "switchRequest":Lcom/nuance/swype/input/LangSwitchAction;
    :cond_2
    move v4, v5

    .line 136
    goto :goto_0

    .line 140
    .restart local v3    # "switchRequest":Lcom/nuance/swype/input/LangSwitchAction;
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v6, v6, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getDefaultAlphabeticInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 142
    new-instance v3, Lcom/nuance/swype/input/LangSwitchAction;

    .end local v3    # "switchRequest":Lcom/nuance/swype/input/LangSwitchAction;
    iget-object v6, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v6, v6, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz p1, :cond_4

    :goto_2
    invoke-direct {v3, v6, v2, p1, v4}, Lcom/nuance/swype/input/LangSwitchAction;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;ZI)V

    .restart local v3    # "switchRequest":Lcom/nuance/swype/input/LangSwitchAction;
    goto :goto_1

    .end local v3    # "switchRequest":Lcom/nuance/swype/input/LangSwitchAction;
    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method public getIMEInstance()Lcom/nuance/swype/input/IMEHandler;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->setCurrentInputLanguage()Z

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->IMEHandlerChinese:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    if-nez v0, :cond_3

    .line 45
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->IMEHandlerChinese:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->IMEHandlerChinese:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .line 59
    :goto_0
    return-object v0

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->IMEHandlerJapanese:Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;

    if-nez v0, :cond_5

    .line 50
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->IMEHandlerJapanese:Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->IMEHandlerJapanese:Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;

    goto :goto_0

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->IMEHandlerKorean:Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    if-nez v0, :cond_7

    .line 55
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->IMEHandlerKorean:Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    .line 57
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->IMEHandlerKorean:Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    goto :goto_0

    .line 59
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 81
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 67
    :sswitch_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEHandlerManager;->getIMEInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEHandlerManager;->getIMEInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandler;->cyclingKeyboardInput()V

    goto :goto_0

    .line 73
    :sswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEHandlerManager;->getIMEInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEHandlerManager;->getIMEInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandler;->toggleFullScreenHwr()V

    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_0
        0x6b -> :sswitch_1
    .end sparse-switch
.end method

.method public refreshIME(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    .line 26
    return-void
.end method

.method public statusBarHeight()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->getStatusBarHeight(Lcom/nuance/swype/input/IME;)I

    move-result v0

    return v0
.end method

.method public toggleFullScreenHW()V
    .locals 4

    .prologue
    const/16 v1, 0x6b

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    return-void
.end method

.method public toggleKeyboard()V
    .locals 4

    .prologue
    const/16 v1, 0x67

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    return-void
.end method

.method public toggleLanguageOrRestore(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputView;)V
    .locals 4
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    const/4 v2, 0x1

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "needSwitch":Z
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v1

    .line 174
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 175
    iget-object v3, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v3, :cond_2

    .line 176
    iget-object v3, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getKeyboardBackgroundManager()Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->setReloadRequiredFromResources(Z)V

    .line 178
    :cond_2
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IMEHandlerManager;->fastSwitchLanguage(Z)V

    .line 180
    :cond_3
    return-void

    .line 169
    :cond_4
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/nuance/swype/input/IMEHandlerManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 172
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getFastSwitchedOffLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->isToggleTemporary()Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method
