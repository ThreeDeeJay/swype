.class Lcom/nuance/connect/sqlite/ReportingDataSource$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/ReportingDataSource;J)V
    .registers 4

    iput-object p1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$7;->this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iput-wide p2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$7;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$7;->this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-wide v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$7;->val$timestamp:J

    # invokes: Lcom/nuance/connect/sqlite/ReportingDataSource;->_clearIndividual(J)V
    invoke-static {v0, v2, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->access$600(Lcom/nuance/connect/sqlite/ReportingDataSource;J)V

    return-void
.end method
