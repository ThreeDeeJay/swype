.class Lcom/nuance/swype/input/settings/HorizontalListView$3;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/HorizontalListView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$3;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$3;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestLayout()V

    .line 632
    return-void
.end method
