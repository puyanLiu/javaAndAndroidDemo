.class final Lcom/alipay/mobile/socialsdk/contact/data/g;
.super Ljava/lang/Object;
.source "SocialSdkContactServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/data/g;->a:Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1071
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v0

    .line 1072
    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->updateAccountSearchIndex()V

    .line 1075
    :cond_0
    return-void
.end method
