.class final Lcom/alipay/mobile/rome/syncservice/b/b;
.super Ljava/lang/Object;
.source "LongLinkCallbackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/syncservice/b/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/syncservice/b/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/b/b;->a:Lcom/alipay/mobile/rome/syncservice/b/a;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->startLink()V

    .line 152
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->refreshUserInfo()V

    .line 153
    return-void
.end method
