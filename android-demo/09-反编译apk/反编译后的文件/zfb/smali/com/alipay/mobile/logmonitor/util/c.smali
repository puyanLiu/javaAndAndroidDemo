.class final Lcom/alipay/mobile/logmonitor/util/c;
.super Ljava/lang/Object;
.source "UserDiagnostician.java"

# interfaces
.implements Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/f;

.field final synthetic b:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/f;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/c;->b:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/c;->a:Lcom/alipay/mobile/logmonitor/util/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/c;->b:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/c;->b:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/c;->a:Lcom/alipay/mobile/logmonitor/util/f;

    iget-object v2, v2, Lcom/alipay/mobile/logmonitor/util/f;->a:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 437
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/c;->b:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/c;->b:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/c;->a:Lcom/alipay/mobile/logmonitor/util/f;

    iget-object v2, v2, Lcom/alipay/mobile/logmonitor/util/f;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 442
    return-void
.end method
