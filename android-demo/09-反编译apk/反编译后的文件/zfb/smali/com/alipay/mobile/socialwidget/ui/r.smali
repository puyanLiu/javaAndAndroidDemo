.class final Lcom/alipay/mobile/socialwidget/ui/r;
.super Ljava/lang/Object;
.source "StrangerSessionPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/r;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 93
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->markStrangerSessionRead()V

    .line 94
    return-void
.end method
