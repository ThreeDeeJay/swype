.class final Landroid/support/v4/app/Fragment$1;
.super Landroid/support/v4/app/FragmentContainer;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 2039
    iput-object p1, p0, Landroid/support/v4/app/Fragment$1;->this$0:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFindViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2043
    iget-object v0, p0, Landroid/support/v4/app/Fragment$1;->this$0:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2044
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2046
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment$1;->this$0:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onHasView()Z
    .locals 1

    .prologue
    .line 2051
    iget-object v0, p0, Landroid/support/v4/app/Fragment$1;->this$0:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
