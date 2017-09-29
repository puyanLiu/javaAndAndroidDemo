.class final Lcom/alipay/mobile/appstoreapp/manager/h;
.super Ljava/lang/Object;
.source "LanguageSettingReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/manager/LanguageSettingReceiver;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/manager/LanguageSettingReceiver;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/manager/h;->a:Lcom/alipay/mobile/appstoreapp/manager/LanguageSettingReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/manager/h;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/h;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->changeStageLanguage()Z

    .line 45
    return-void
.end method
