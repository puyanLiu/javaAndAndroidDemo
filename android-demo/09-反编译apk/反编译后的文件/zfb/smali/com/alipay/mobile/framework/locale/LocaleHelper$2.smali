.class Lcom/alipay/mobile/framework/locale/LocaleHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "LocaleHelper.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/locale/LocaleHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/locale/LocaleHelper;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$2;->this$0:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 549
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ACTION_LOCALE_CHANGED"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$2;->this$0:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->access$100(Lcom/alipay/mobile/framework/locale/LocaleHelper;Z)V

    .line 553
    :cond_0
    return-void
.end method
