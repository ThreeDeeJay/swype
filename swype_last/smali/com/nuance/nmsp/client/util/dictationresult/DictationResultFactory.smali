.class public Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDictationResult([B)Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v3, 0x14

    sget-object v0, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DictationResultImpl(buffer [size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->traceBuffer([B)V

    :cond_34
    if-eqz p0, :cond_3a

    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_50

    :cond_3a
    const-string/jumbo v0, "Cannot parse dictation results: The buffer length is too small to be containing any results."

    sget-object v1, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    :try_start_50
    array-length v0, p0

    if-le v0, v3, :cond_92

    const/4 v0, 0x0

    const/16 v1, 0x14

    const-string/jumbo v2, "ISO-8859-1"

    invoke-static {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->constructByteEncodedString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "<?xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "<?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_92

    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_92

    :cond_78
    sget-object v0, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_88

    sget-object v0, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Detected xml results. Using xml parser."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_88
    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;-><init>([B)V

    :goto_8d
    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/ResultParser;->parse()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    move-result-object v0

    return-object v0

    :cond_92
    sget-object v0, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_a2

    sget-object v0, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Detected binary results. Using binary parser."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_a2
    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;-><init>([B)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_a7} :catch_a8

    goto :goto_8d

    :catch_a8
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot parse dictation results: illegal format buffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
