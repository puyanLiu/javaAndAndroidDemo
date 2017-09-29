.class final Lcom/alipay/mobile/socialsdk/contact/data/d;
.super Ljava/lang/Object;
.source "SocialSdkContactServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;

.field private final synthetic b:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

.field private final synthetic c:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/data/d;->a:Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/d;->b:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/data/d;->c:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/d;->a:Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "initContactModuleForLoggin:\u52a0\u8f7d\u6d41\u7a0b\u542f\u52a8"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/d;->b:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->tryToRefreshFriendList()V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/d;->a:Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->b(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;)V

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/d;->a:Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/data/d;->c:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->permitContactsUpload(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/d;->a:Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->beginUpload()V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/d;->a:Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->c(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;)V

    .line 180
    return-void
.end method
