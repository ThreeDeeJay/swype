.class Lcom/nuance/swype/input/PermissionRequestActivity$1;
.super Ljava/lang/Object;
.source "PermissionRequestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/PermissionRequestActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/PermissionRequestActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/PermissionRequestActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/PermissionRequestActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/nuance/swype/input/PermissionRequestActivity$1;->this$0:Lcom/nuance/swype/input/PermissionRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/PermissionRequestActivity$1;->this$0:Lcom/nuance/swype/input/PermissionRequestActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/PermissionRequestActivity;->finish()V

    .line 86
    return-void
.end method