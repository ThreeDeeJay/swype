.class final Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;
.super Landroid/support/v7/widget/ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

.field final synthetic val$this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .registers 4
    .param p1, "this$1"    # Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 650
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 1053
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 653
    if-nez v0, :cond_a

    .line 654
    const/4 v0, 0x0

    .line 657
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 2053
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 657
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->getPopup()Landroid/support/v7/view/menu/MenuPopup;

    move-result-object v0

    goto :goto_9
.end method

.method public final onForwardingStarted()Z
    .registers 2

    .prologue
    .line 662
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 663
    const/4 v0, 0x1

    return v0
.end method

.method public final onForwardingStopped()Z
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 3053
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 671
    if-eqz v0, :cond_a

    .line 672
    const/4 v0, 0x0

    .line 676
    :goto_9
    return v0

    .line 675
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 676
    const/4 v0, 0x1

    goto :goto_9
.end method
