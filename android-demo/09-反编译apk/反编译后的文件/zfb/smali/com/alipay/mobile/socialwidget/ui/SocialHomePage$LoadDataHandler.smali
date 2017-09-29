.class public final Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;
.super Landroid/os/Handler;
.source "SocialHomePage.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    .line 731
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 732
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 737
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 748
    :goto_0
    return-void

    .line 739
    :sswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_SocialHomeWidget"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 742
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 737
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
