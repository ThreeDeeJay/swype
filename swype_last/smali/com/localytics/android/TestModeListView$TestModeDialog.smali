.class final Lcom/localytics/android/TestModeListView$TestModeDialog;
.super Landroid/app/Dialog;
.source "TestModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/TestModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TestModeDialog"
.end annotation


# instance fields
.field private mAnimIn:Landroid/view/animation/TranslateAnimation;

.field private mAnimOut:Landroid/view/animation/TranslateAnimation;

.field private mDialogLayout:Landroid/widget/RelativeLayout;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field final synthetic this$0:Lcom/localytics/android/TestModeListView;


# direct methods
.method public constructor <init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;I)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .prologue
    .line 231
    iput-object p1, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    .line 232
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 234
    invoke-direct {p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->setupViews()V

    .line 235
    invoke-direct {p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->createAnimations()V

    .line 236
    invoke-direct {p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->adjustLayout()V

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/TestModeListView$TestModeDialog;)Landroid/view/animation/TranslateAnimation;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/TestModeListView$TestModeDialog;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/TestModeListView$TestModeDialog;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/TestModeListView$TestModeDialog;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private adjustLayout()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 377
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    .line 378
    iget-object v2, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v2}, Lcom/localytics/android/TestModeListView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 379
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 384
    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 385
    .local v1, "window":Landroid/view/Window;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 387
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 388
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 389
    iget-object v2, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 390
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 392
    iget-object v2, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/localytics/android/TestModeListView;->access$400(Lcom/localytics/android/TestModeListView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 394
    iget-object v2, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 398
    :cond_56
    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 399
    return-void
.end method

.method private createAnimations()V
    .registers 10

    .prologue
    .line 352
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimIn:Landroid/view/animation/TranslateAnimation;

    .line 353
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 354
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    .line 355
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 356
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/localytics/android/TestModeListView$TestModeDialog$4;

    invoke-direct {v1, p0}, Lcom/localytics/android/TestModeListView$TestModeDialog$4;-><init>(Lcom/localytics/android/TestModeListView$TestModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 371
    return-void
.end method

.method private setupViews()V
    .registers 22

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v13}, Lcom/localytics/android/TestModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v4, v13, Landroid/util/DisplayMetrics;->density:F

    .line 244
    .local v4, "dip":F
    new-instance v13, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 249
    new-instance v11, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 250
    .local v11, "topLayout":Landroid/widget/RelativeLayout;
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 251
    .local v12, "topParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 252
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 253
    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    const/16 v13, 0xff

    const/16 v14, 0x49

    const/16 v15, 0x49

    const/16 v16, 0x49

    invoke-static/range {v13 .. v16}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 255
    const/high16 v13, 0x41000000    # 8.0f

    mul-float/2addr v13, v4

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    const/high16 v14, 0x41400000    # 12.0f

    mul-float/2addr v14, v4

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    const/high16 v15, 0x41000000    # 8.0f

    mul-float/2addr v15, v4

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    const/high16 v16, 0x41400000    # 12.0f

    mul-float v16, v16, v4

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v13, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 259
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 260
    .local v3, "close":Landroid/widget/TextView;
    const-string/jumbo v13, "Close"

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    const/high16 v13, 0x41b00000    # 22.0f

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 262
    new-instance v13, Landroid/content/res/ColorStateList;

    const/4 v14, 0x3

    new-array v14, v14, [[I

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x10100a7

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x101009c

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x3

    new-array v15, v15, [I

    const/16 v16, 0x0

    const/16 v17, 0xff

    const/16 v18, 0xff

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v20}, Landroid/graphics/Color;->argb(IIII)I

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0xff

    const/16 v18, 0x0

    const/16 v19, 0x5b

    const/16 v20, 0xff

    invoke-static/range {v17 .. v20}, Landroid/graphics/Color;->argb(IIII)I

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0xff

    const/16 v18, 0x0

    const/16 v19, 0x5b

    const/16 v20, 0xff

    invoke-static/range {v17 .. v20}, Landroid/graphics/Color;->argb(IIII)I

    move-result v17

    aput v17, v15, v16

    invoke-direct {v13, v14, v15}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 263
    new-instance v13, Lcom/localytics/android/TestModeListView$TestModeDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/localytics/android/TestModeListView$TestModeDialog$1;-><init>(Lcom/localytics/android/TestModeListView$TestModeDialog;)V

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v7, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v7, "paramsClose":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0x9

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 281
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 285
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 286
    .local v10, "title":Landroid/widget/TextView;
    const-string/jumbo v13, "Localytics"

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    const/high16 v13, 0x41b00000    # 22.0f

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 288
    const/4 v13, -0x1

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v9, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 290
    .local v9, "paramsTitle":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xd

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 291
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    invoke-virtual {v11, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 295
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v6, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 296
    .local v6, "menu":Landroid/widget/TextView;
    const-string/jumbo v13, "Menu"

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const/high16 v13, 0x41b00000    # 22.0f

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 298
    new-instance v13, Landroid/content/res/ColorStateList;

    const/4 v14, 0x3

    new-array v14, v14, [[I

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x10100a7

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x101009c

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x3

    new-array v15, v15, [I

    const/16 v16, 0x0

    const/16 v17, 0xff

    const/16 v18, 0xff

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v20}, Landroid/graphics/Color;->argb(IIII)I

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0xff

    const/16 v18, 0x0

    const/16 v19, 0x5b

    const/16 v20, 0xff

    invoke-static/range {v17 .. v20}, Landroid/graphics/Color;->argb(IIII)I

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0xff

    const/16 v18, 0x0

    const/16 v19, 0x5b

    const/16 v20, 0xff

    invoke-static/range {v17 .. v20}, Landroid/graphics/Color;->argb(IIII)I

    move-result v17

    aput v17, v15, v16

    invoke-direct {v13, v14, v15}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 299
    new-instance v13, Lcom/localytics/android/TestModeListView$TestModeDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/localytics/android/TestModeListView$TestModeDialog$2;-><init>(Lcom/localytics/android/TestModeListView$TestModeDialog;)V

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v8, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 312
    .local v8, "paramsMenu":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xb

    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 313
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    invoke-virtual {v11, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 317
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v1, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 318
    .local v1, "bottomLayout":Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v2, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 319
    .local v2, "bottomParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 320
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 324
    new-instance v5, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 325
    .local v5, "listView":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v13}, Lcom/localytics/android/TestModeListView;->access$300(Lcom/localytics/android/TestModeListView;)Landroid/widget/ListAdapter;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    new-instance v13, Lcom/localytics/android/TestModeListView$TestModeDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/localytics/android/TestModeListView$TestModeDialog$3;-><init>(Lcom/localytics/android/TestModeListView$TestModeDialog;)V

    invoke-virtual {v5, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 341
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 343
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/localytics/android/TestModeListView$TestModeDialog;->requestWindowFeature(I)Z

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/localytics/android/TestModeListView$TestModeDialog;->setContentView(Landroid/view/View;)V

    .line 345
    return-void
.end method


# virtual methods
.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 404
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2f

    .line 406
    iget-object v1, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 407
    iget-object v1, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;
    invoke-static {v1}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 409
    iget-object v1, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;
    invoke-static {v1}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    .line 410
    .local v0, "callable":Lcom/localytics/android/MarketingCallable;
    if-eqz v0, :cond_2a

    .line 412
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v0    # "callable":Lcom/localytics/android/MarketingCallable;
    :cond_2a
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 417
    :goto_2e
    return v1

    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2e
.end method
