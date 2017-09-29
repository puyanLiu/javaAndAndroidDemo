.class final Lcom/alipay/mobile/logmonitor/util/stack/d;
.super Ljava/lang/Object;
.source "StorageTracer.java"

# interfaces
.implements Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

.field final synthetic c:Lcom/alipay/mobile/logmonitor/util/stack/StorageTracer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/stack/StorageTracer;Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->c:Lcom/alipay/mobile/logmonitor/util/stack/StorageTracer;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->b:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->b:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->b:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a()V

    .line 88
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->b:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->b:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method
