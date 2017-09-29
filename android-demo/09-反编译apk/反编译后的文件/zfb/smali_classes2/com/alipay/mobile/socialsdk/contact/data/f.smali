.class final Lcom/alipay/mobile/socialsdk/contact/data/f;
.super Ljava/lang/Object;
.source "SocialSdkContactServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/data/f;->a:Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/f;->b:Ljava/lang/String;

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1049
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v0

    .line 1050
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/f;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->checkAndLoadGroupProfile(Ljava/util/List;Z)Ljava/util/List;

    .line 1053
    return-void
.end method
