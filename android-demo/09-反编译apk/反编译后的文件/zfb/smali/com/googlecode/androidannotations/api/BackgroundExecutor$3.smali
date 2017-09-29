.class final Lcom/googlecode/androidannotations/api/BackgroundExecutor$3;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p4, p0, Lcom/googlecode/androidannotations/api/BackgroundExecutor$3;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 1

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/BackgroundExecutor$3;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
