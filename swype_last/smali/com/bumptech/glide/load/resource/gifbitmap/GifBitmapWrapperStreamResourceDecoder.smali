.class public final Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperStreamResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final gifBitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "gifBitmapDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;->gifBitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 20
    return-void
.end method


# virtual methods
.method public final bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 7
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    check-cast p1, Ljava/io/InputStream;

    .line 1024
    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;->gifBitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    new-instance v1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;->gifBitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
