.class Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;
.super Lcom/nuance/swype/input/SwypeDialog;
.source "ShowFirstTimeStartupMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogMessages"
.end annotation


# instance fields
.field final negativeLabelId:I

.field final onButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field final positiveLabelId:I

.field final resMsgId:I


# direct methods
.method public constructor <init>(IIILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "positiveLabelId"    # I
    .param p3, "negativeLabelId"    # I
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/nuance/swype/input/SwypeDialog;-><init>()V

    .line 138
    iput p1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;->resMsgId:I

    .line 139
    iput-object p4, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;->onButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 140
    iput p2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;->positiveLabelId:I

    .line 141
    iput p3, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;->negativeLabelId:I

    .line 142
    return-void
.end method


# virtual methods
.method protected onCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 149
    sget v1, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 151
    iget v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;->positiveLabelId:I

    iget-object v2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;->onButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    iget v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;->negativeLabelId:I

    if-eqz v1, :cond_0

    .line 153
    iget v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;->negativeLabelId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    :cond_0
    iget v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;->resMsgId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 157
    return-object v1
.end method
