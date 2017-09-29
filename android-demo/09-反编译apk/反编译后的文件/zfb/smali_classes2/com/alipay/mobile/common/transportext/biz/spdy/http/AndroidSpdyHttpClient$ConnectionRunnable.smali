.class public Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient$ConnectionRunnable;
.super Ljava/lang/Object;
.source "AndroidSpdyHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient$ConnectionRunnable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient$ConnectionRunnable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->connect()Z

    .line 610
    return-void
.end method
