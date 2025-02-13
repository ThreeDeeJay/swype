.class public Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;
.super Landroid/support/v7/widget/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    const/16 v4, 0x16

    const/16 v3, 0x15

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 139
    .local v0, "config":Landroid/content/res/Configuration;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_21

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v1, v2, :cond_21

    .line 141
    iput v3, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 142
    iput v4, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 147
    :goto_20
    return-void

    .line 144
    :cond_21
    iput v4, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 145
    iput v3, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_20
.end method


# virtual methods
.method public bridge synthetic hasFocus()Z
    .registers 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/support/v7/widget/DropDownListView;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .registers 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/support/v7/widget/DropDownListView;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .registers 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/support/v7/widget/DropDownListView;->isFocused()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTouchMode()Z
    .registers 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/support/v7/widget/DropDownListView;->isInTouchMode()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .registers 4

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 181
    iget-object v9, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    if-eqz v9, :cond_57

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 186
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v9, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v9, :cond_5c

    move-object v1, v0

    .line 187
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 188
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 189
    .local v2, "headersCount":I
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuAdapter;

    .line 196
    .end local v1    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    .local v5, "menuAdapter":Landroid/support/v7/view/menu/MenuAdapter;
    :goto_19
    const/4 v6, 0x0

    .line 197
    .local v6, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_41

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v8

    .line 199
    .local v8, "position":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_41

    .line 200
    sub-int v3, v8, v2

    .line 201
    .local v3, "itemPosition":I
    if-ltz v3, :cond_41

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuAdapter;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_41

    .line 202
    invoke-virtual {v5, v3}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    .line 207
    .end local v3    # "itemPosition":I
    .end local v8    # "position":I
    :cond_41
    iget-object v7, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 208
    .local v7, "oldMenuItem":Landroid/view/MenuItem;
    if-eq v7, v6, :cond_57

    .line 2065
    iget-object v4, v5, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 210
    .local v4, "menu":Landroid/support/v7/view/menu/MenuBuilder;
    if-eqz v7, :cond_4e

    .line 211
    iget-object v9, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-interface {v9, v4, v7}, Landroid/support/v7/widget/MenuItemHoverListener;->onItemHoverExit(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 214
    :cond_4e
    iput-object v6, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 216
    if-eqz v6, :cond_57

    .line 217
    iget-object v9, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-interface {v9, v4, v6}, Landroid/support/v7/widget/MenuItemHoverListener;->onItemHoverEnter(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 222
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "headersCount":I
    .end local v4    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    .end local v5    # "menuAdapter":Landroid/support/v7/view/menu/MenuAdapter;
    .end local v6    # "menuItem":Landroid/view/MenuItem;
    .end local v7    # "oldMenuItem":Landroid/view/MenuItem;
    :cond_57
    invoke-super {p0, p1}, Landroid/support/v7/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 191
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5c
    const/4 v2, 0x0

    .restart local v2    # "headersCount":I
    move-object v5, v0

    .line 192
    check-cast v5, Landroid/support/v7/view/menu/MenuAdapter;

    .restart local v5    # "menuAdapter":Landroid/support/v7/view/menu/MenuAdapter;
    goto :goto_19
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 159
    invoke-virtual {p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/ListMenuItemView;

    .line 160
    .local v0, "selectedItem":Landroid/support/v7/view/menu/ListMenuItemView;
    if-eqz v0, :cond_2a

    iget v1, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne p1, v1, :cond_2a

    .line 161
    invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuItemView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 164
    invoke-virtual {p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result v1

    .line 165
    invoke-virtual {p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v4

    .line 162
    invoke-virtual {p0, v0, v1, v4, v5}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_28
    move v1, v2

    .line 175
    :goto_29
    return v1

    .line 168
    :cond_2a
    if-eqz v0, :cond_42

    iget v1, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne p1, v1, :cond_42

    .line 169
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 172
    invoke-virtual {p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuAdapter;

    .line 1065
    iget-object v1, v1, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 172
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    move v1, v2

    .line 173
    goto :goto_29

    .line 175
    :cond_42
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_29
.end method

.method public setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V
    .registers 2
    .param p1, "hoverListener"    # Landroid/support/v7/widget/MenuItemHoverListener;

    .prologue
    .line 150
    iput-object p1, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    .line 151
    return-void
.end method
