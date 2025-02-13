.class public Lcom/nuance/swype/input/view/DragFrameWings;
.super Lcom/nuance/swype/input/view/DragFrame;
.source "DragFrameWings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private activeGrip:Landroid/view/View;

.field private leftGrip:Landroid/widget/ImageView;

.field private rightGrip:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string/jumbo v0, "DragFrameWings"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/view/DragFrameWings;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/DragFrame;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/view/DragFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/view/DragFrameWings;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/view/DragFrameWings;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings;->activeGrip:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/view/DragFrameWings;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/view/DragFrameWings;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nuance/swype/input/view/DragFrameWings;->activeGrip:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/nuance/swype/input/view/DragFrameWings;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method private static fixBackgroundRepeat(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_17

    .line 65
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_17

    move-object v1, v0

    .line 66
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 67
    .local v1, "bmp":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 68
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 71
    .end local v1    # "bmp":Landroid/graphics/drawable/BitmapDrawable;
    :cond_17
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 39
    invoke-super {p0}, Lcom/nuance/swype/input/view/DragFrame;->onFinishInflate()V

    .line 41
    new-instance v0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;-><init>(Lcom/nuance/swype/input/view/DragFrameWings;Lcom/nuance/swype/input/view/DragFrameWings$1;)V

    .line 42
    .local v0, "dragGestureListener":Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;
    sget v1, Lcom/nuance/swype/input/R$id;->left_wing:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/view/DragFrameWings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/nuance/swype/input/view/DragFrameWings;->leftGrip:Landroid/widget/ImageView;

    .line 43
    iget-object v1, p0, Lcom/nuance/swype/input/view/DragFrameWings;->leftGrip:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/nuance/swype/input/view/DragFrameWings;->fixBackgroundRepeat(Landroid/view/View;)V

    .line 44
    iget-object v1, p0, Lcom/nuance/swype/input/view/DragFrameWings;->leftGrip:Landroid/widget/ImageView;

    new-instance v2, Lcom/nuance/swype/input/DragGesture;

    invoke-direct {v2, v0}, Lcom/nuance/swype/input/DragGesture;-><init>(Lcom/nuance/swype/input/DragGesture$IDragGestureListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    sget v1, Lcom/nuance/swype/input/R$id;->right_wing:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/view/DragFrameWings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/nuance/swype/input/view/DragFrameWings;->rightGrip:Landroid/widget/ImageView;

    .line 46
    iget-object v1, p0, Lcom/nuance/swype/input/view/DragFrameWings;->rightGrip:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/nuance/swype/input/view/DragFrameWings;->fixBackgroundRepeat(Landroid/view/View;)V

    .line 47
    iget-object v1, p0, Lcom/nuance/swype/input/view/DragFrameWings;->rightGrip:Landroid/widget/ImageView;

    new-instance v2, Lcom/nuance/swype/input/DragGesture;

    invoke-direct {v2, v0}, Lcom/nuance/swype/input/DragGesture;-><init>(Lcom/nuance/swype/input/DragGesture$IDragGestureListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    return-void
.end method

.method public showDecoration(Z)V
    .registers 6
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 52
    iget-object v3, p0, Lcom/nuance/swype/input/view/DragFrameWings;->leftGrip:Landroid/widget/ImageView;

    if-eqz p1, :cond_13

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings;->rightGrip:Landroid/widget/ImageView;

    if-eqz p1, :cond_15

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    return-void

    :cond_13
    move v0, v2

    .line 52
    goto :goto_8

    :cond_15
    move v1, v2

    .line 53
    goto :goto_f
.end method
