.class Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;
.super Ljava/lang/Object;
.source "TwoFingerGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Finger"
.end annotation


# instance fields
.field private endX:F

.field private endY:F

.field private startX:F

.field private startY:F


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->startX:F

    .line 34
    iput v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->startY:F

    .line 35
    iput v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->endX:F

    .line 36
    iput v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->endY:F

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$1;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;-><init>()V

    return-void
.end method


# virtual methods
.method public isScrollDown()Z
    .registers 3

    .prologue
    .line 73
    iget v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->endY:F

    iget v1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->startY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    iget v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->endX:F

    iget v1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->startX:F

    sub-float/2addr v0, v1

    .line 74
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isScrollLeft()Z
    .registers 3

    .prologue
    .line 56
    iget v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->startX:F

    iget v1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->endX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    iget v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->endY:F

    iget v1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->startY:F

    sub-float/2addr v0, v1

    .line 57
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isScrollRight()Z
    .registers 3

    .prologue
    .line 62
    iget v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->endX:F

    iget v1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->startX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    iget v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->endY:F

    iget v1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->startY:F

    sub-float/2addr v0, v1

    .line 63
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isScrollUp()Z
    .registers 3

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->startY:F

    iget v1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->endY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    iget v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->endX:F

    iget v1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->startX:F

    sub-float/2addr v0, v1

    .line 69
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public setEndX(F)V
    .registers 2
    .param p1, "aEndX"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->endX:F

    .line 49
    return-void
.end method

.method public setEndY(F)V
    .registers 2
    .param p1, "aEndY"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->endY:F

    .line 53
    return-void
.end method

.method public setStartX(F)V
    .registers 2
    .param p1, "aStartX"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->startX:F

    .line 41
    return-void
.end method

.method public setStartY(F)V
    .registers 2
    .param p1, "aStartY"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->startY:F

    .line 45
    return-void
.end method
