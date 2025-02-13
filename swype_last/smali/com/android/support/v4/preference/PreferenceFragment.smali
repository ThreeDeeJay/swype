.class public abstract Lcom/android/support/v4/preference/PreferenceFragment;
.super Landroid/support/v4/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/support/v4/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mList:Landroid/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Lcom/android/support/v4/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/support/v4/preference/PreferenceFragment$1;-><init>(Lcom/android/support/v4/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/android/support/v4/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/support/v4/preference/PreferenceFragment$2;-><init>(Lcom/android/support/v4/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 294
    new-instance v0, Lcom/android/support/v4/preference/PreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/android/support/v4/preference/PreferenceFragment$3;-><init>(Lcom/android/support/v4/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/support/v4/preference/PreferenceFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/support/v4/preference/PreferenceFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/support/v4/preference/PreferenceFragment;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/android/support/v4/preference/PreferenceFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindPreferences()V
    .registers 3

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 260
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_d

    .line 261
    invoke-virtual {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 263
    :cond_d
    return-void
.end method

.method private ensureList()V
    .registers 5

    .prologue
    .line 271
    iget-object v2, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_5

    .line 292
    :goto_4
    return-void

    .line 274
    :cond_5
    invoke-virtual {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_14

    .line 276
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_14
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_28

    .line 280
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_28
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 285
    iget-object v2, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v2, :cond_39

    .line 286
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 290
    :cond_39
    iget-object v2, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 291
    iget-object v2, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method private postBindPreferences()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 254
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 256
    :goto_9
    return-void

    .line 255
    :cond_a
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method private requirePreferenceManager()V
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_d

    .line 249
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_d
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 208
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/support/v4/preference/PreferenceManagerCompat;->inflateFromIntent(Landroid/preference/PreferenceManager;Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/support/v4/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 209
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .registers 5
    .param p1, "preferencesResId"    # I

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 220
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 221
    invoke-virtual {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 220
    invoke-static {v0, v1, p1, v2}, Lcom/android/support/v4/preference/PreferenceManagerCompat;->inflateFromResource(Landroid/preference/PreferenceManager;Landroid/app/Activity;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/support/v4/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 222
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_6

    .line 242
    const/4 v0, 0x0

    .line 244
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_5
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->ensureList()V

    .line 267
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v0}, Lcom/android/support/v4/preference/PreferenceManagerCompat;->getPreferenceScreen(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    iget-boolean v2, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_a

    .line 106
    invoke-direct {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->bindPreferences()V

    .line 109
    :cond_a
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mInitDone:Z

    .line 111
    if-eqz p1, :cond_21

    .line 112
    const-string/jumbo v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_21

    .line 114
    invoke-virtual {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 115
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_21

    .line 116
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 120
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_21
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 165
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v0, p1, p2, p3}, Lcom/android/support/v4/preference/PreferenceManagerCompat;->dispatchActivityResult(Landroid/preference/PreferenceManager;IILandroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/support/v4/preference/PreferenceManagerCompat;->newInstance$65cee2cb(Landroid/app/Activity;)Landroid/preference/PreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 91
    invoke-static {}, Lcom/android/support/v4/preference/PreferenceManagerCompat;->setFragment$7b6d5139()V

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "paramLayoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "paramViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    sget v0, Lcom/nuance/swype/input/R$layout;->preference_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 146
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v0}, Lcom/android/support/v4/preference/PreferenceManagerCompat;->dispatchActivityDestroy(Landroid/preference/PreferenceManager;)V

    .line 147
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 138
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 141
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/support/v4/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/support/v4/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0}, Lcom/android/support/v4/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment$1d864d12()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 154
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_17

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 157
    const-string/jumbo v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_17
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 125
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v0, p0}, Lcom/android/support/v4/preference/PreferenceManagerCompat;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager;Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V

    .line 126
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 131
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v0}, Lcom/android/support/v4/preference/PreferenceManagerCompat;->dispatchActivityStop(Landroid/preference/PreferenceManager;)V

    .line 132
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/support/v4/preference/PreferenceManagerCompat;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager;Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V

    .line 133
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .registers 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v0, p1}, Lcom/android/support/v4/preference/PreferenceManagerCompat;->setPreferences(Landroid/preference/PreferenceManager;Landroid/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mHavePrefs:Z

    .line 184
    iget-boolean v0, p0, Lcom/android/support/v4/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_14

    .line 185
    invoke-direct {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->postBindPreferences()V

    .line 188
    :cond_14
    return-void
.end method
