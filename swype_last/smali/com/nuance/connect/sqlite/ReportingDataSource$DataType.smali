.class public final enum Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/ReportingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

.field public static final enum AGGREGATE:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

.field public static final enum INDIVIDUAL:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    const-string/jumbo v1, "AGGREGATE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->AGGREGATE:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    const-string/jumbo v1, "INDIVIDUAL"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->INDIVIDUAL:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->AGGREGATE:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->INDIVIDUAL:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->$VALUES:[Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;
    .registers 2

    const-class v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->$VALUES:[Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    invoke-virtual {v0}, [Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    return-object v0
.end method
