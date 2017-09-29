.class public Lcom/spdu/httpdns/TaskThread;
.super Ljava/lang/Object;
.source "TaskThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/spdu/httpdns/ThreadType;

.field b:Lcom/spdu/httpdns/DnsEvent;


# direct methods
.method public constructor <init>(Lcom/spdu/httpdns/ThreadType;)V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/spdu/httpdns/TaskThread;->a:Lcom/spdu/httpdns/ThreadType;

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spdu/httpdns/TaskThread;->b:Lcom/spdu/httpdns/DnsEvent;

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/spdu/httpdns/TaskThread;->a:Lcom/spdu/httpdns/ThreadType;

    sget-object v1, Lcom/spdu/httpdns/ThreadType;->SYSTEMDNSTEST:Lcom/spdu/httpdns/ThreadType;

    if-eq v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/spdu/httpdns/TaskThread;->a:Lcom/spdu/httpdns/ThreadType;

    sget-object v1, Lcom/spdu/httpdns/ThreadType;->SYSTEMHTTPTEST:Lcom/spdu/httpdns/ThreadType;

    if-eq v0, v1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/spdu/httpdns/TaskThread;->a:Lcom/spdu/httpdns/ThreadType;

    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_READ:Lcom/spdu/httpdns/ThreadType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/spdu/httpdns/TaskThread;->a:Lcom/spdu/httpdns/ThreadType;

    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_WRITE:Lcom/spdu/httpdns/ThreadType;

    if-eq v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/spdu/httpdns/TaskThread;->a:Lcom/spdu/httpdns/ThreadType;

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsTools;->a(Lcom/spdu/httpdns/ThreadType;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    const-string/jumbo v0, "run error!"

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
