.class final Landroid/support/v7/widget/ScrollbarHelper;
.super Ljava/lang/Object;
.source "ScrollbarHelper.java"


# direct methods
.method static computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I
    .registers 9
    .param p0, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "orientation"    # Landroid/support/v7/widget/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z

    .prologue
    .line 63
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p2, :cond_10

    if-nez p3, :cond_12

    .line 65
    :cond_10
    const/4 v1, 0x0

    .line 72
    :goto_11
    return v1

    .line 67
    :cond_12
    if-nez p5, :cond_24

    .line 68
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 70
    :cond_24
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 71
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int v0, v1, v2

    .line 72
    .local v0, "extend":I
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_11
.end method

.method static computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;ZZ)I
    .registers 16
    .param p0, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "orientation"    # Landroid/support/v7/widget/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z
    .param p6, "reverseLayout"    # Z

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    if-eqz v6, :cond_11

    if-eqz p2, :cond_11

    if-nez p3, :cond_12

    .line 52
    :cond_11
    :goto_11
    return v2

    .line 36
    :cond_12
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 37
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 36
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 38
    .local v5, "minPosition":I
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 39
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 40
    .local v4, "maxPosition":I
    if-eqz p6, :cond_6b

    .line 41
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 43
    .local v2, "itemsBefore":I
    :goto_37
    if-eqz p5, :cond_11

    .line 46
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    .line 47
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    .line 46
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 48
    .local v3, "laidOutArea":I
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 49
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    .line 48
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 50
    .local v1, "itemRange":I
    int-to-float v6, v3

    int-to-float v7, v1

    div-float v0, v6, v7

    .line 52
    .local v0, "avgSizePerRow":F
    int-to-float v6, v2

    mul-float/2addr v6, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 53
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 52
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_11

    .line 42
    .end local v0    # "avgSizePerRow":F
    .end local v1    # "itemRange":I
    .end local v2    # "itemsBefore":I
    .end local v3    # "laidOutArea":I
    :cond_6b
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_37
.end method

.method static computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I
    .registers 10
    .param p0, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "orientation"    # Landroid/support/v7/widget/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z

    .prologue
    .line 82
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-eqz v2, :cond_10

    if-eqz p2, :cond_10

    if-nez p3, :cond_12

    .line 84
    :cond_10
    const/4 v2, 0x0

    .line 96
    :goto_11
    return v2

    .line 86
    :cond_12
    if-nez p5, :cond_19

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    goto :goto_11

    .line 90
    :cond_19
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    .line 91
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    sub-int v0, v2, v3

    .line 92
    .local v0, "laidOutArea":I
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 93
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 92
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 96
    .local v1, "laidOutRange":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_11
.end method
