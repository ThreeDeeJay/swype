.class public final enum Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/MasterDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

.field public static final enum BLOB:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

.field public static final enum DATETIME:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

.field public static final enum INTEGER:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

.field public static final enum STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

.field public static final enum TEXT:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    const-string/jumbo v1, "BLOB"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->BLOB:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    new-instance v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    const-string/jumbo v1, "INTEGER"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->INTEGER:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    new-instance v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    const-string/jumbo v1, "STRING"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    new-instance v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v5}, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->TEXT:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    new-instance v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    const-string/jumbo v1, "DATETIME"

    invoke-direct {v0, v1, v6}, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->DATETIME:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->BLOB:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->INTEGER:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->TEXT:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->DATETIME:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->$VALUES:[Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;
    .registers 2

    const-class v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->$VALUES:[Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-virtual {v0}, [Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    return-object v0
.end method
