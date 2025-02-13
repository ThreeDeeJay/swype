.class Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .param p5, "consumed"    # Z

    .prologue
    .line 113
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_b

    .line 114
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    .line 117
    :goto_a
    return v0

    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 123
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_b

    .line 124
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    .line 127
    :goto_a
    return v0

    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "consumed"    # [I

    .prologue
    .line 105
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_9

    .line 106
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    .line 108
    :cond_9
    return-void
.end method

.method public onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 13
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "dxConsumed"    # I
    .param p4, "dyConsumed"    # I
    .param p5, "dxUnconsumed"    # I
    .param p6, "dyUnconsumed"    # I

    .prologue
    .line 96
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_f

    move-object v0, p1

    .line 97
    check-cast v0, Landroid/support/v4/view/NestedScrollingParent;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    .line 100
    :cond_f
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "nestedScrollAxes"    # I

    .prologue
    .line 80
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_9

    .line 81
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 84
    :cond_9
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "nestedScrollAxes"    # I

    .prologue
    .line 70
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_b

    .line 71
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    .line 74
    :goto_a
    return v0

    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 88
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_9

    .line 89
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    .line 91
    :cond_9
    return-void
.end method
