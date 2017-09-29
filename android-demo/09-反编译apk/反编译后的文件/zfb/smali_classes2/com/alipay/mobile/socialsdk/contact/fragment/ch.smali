.class final Lcom/alipay/mobile/socialsdk/contact/fragment/ch;
.super Ljava/lang/Object;
.source "PhoneBookSingleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ch;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ch;->b:Ljava/lang/String;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "\u624b\u673a\u901a\u8baf\u5f55\u9875\u9762\u7b49\u5f85\u8d85\u65f6"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ch;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->sendLoadMessage()V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobile_load_fail"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ch;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    return-void
.end method
