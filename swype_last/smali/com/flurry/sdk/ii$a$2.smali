.class final Lcom/flurry/sdk/ii$a$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ii$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ii$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ii$a;Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 233
    iput-object p1, p0, Lcom/flurry/sdk/ii$a$2;->a:Lcom/flurry/sdk/ii$a;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    .prologue
    .line 237
    return-void
.end method
