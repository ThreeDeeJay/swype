.class final Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
.super Landroid/support/v7/graphics/drawable/DrawableWrapper;
.source "ListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GateKeeperDrawable"
.end annotation


# instance fields
.field mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 364
    invoke-direct {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    .line 366
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 382
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_7

    .line 383
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 385
    :cond_7
    return-void
.end method

.method public final setHotspot(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 389
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_7

    .line 390
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setHotspot(FF)V

    .line 392
    :cond_7
    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 396
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_7

    .line 397
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setHotspotBounds(IIII)V

    .line 399
    :cond_7
    return-void
.end method

.method public final setState([I)Z
    .registers 3
    .param p1, "stateSet"    # [I

    .prologue
    .line 374
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_9

    .line 375
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setState([I)Z

    move-result v0

    .line 377
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final setVisible(ZZ)Z
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 403
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_9

    .line 404
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    move-result v0

    .line 406
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
