.class final Lcom/alipay/mobile/common/logging/b;
.super Ljava/lang/Object;
.source "LogContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/common/logging/LogContextImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/b;->b:Lcom/alipay/mobile/common/logging/LogContextImpl;

    iput-object p2, p0, Lcom/alipay/mobile/common/logging/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 624
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "LogDumpTag"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "LogDumpTag"

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/b;->b:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v1, "applog"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/b;->b:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v1, "trafficLog"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    goto :goto_0
.end method
