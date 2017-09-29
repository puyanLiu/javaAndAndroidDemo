.class public Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;
.super Ljava/lang/Object;
.source "AppEventManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "amnet_AppEventManager"

.field private static volatile eventlistener:Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

.field private static volatile inited:Z

.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->listeners:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->inited:Z

    .line 28
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->eventlistener:Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static getListener()Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->eventlistener:Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    return-object v0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 169
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->inited:Z

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->inited:Z

    .line 175
    const-string/jumbo v0, "amnet_AppEventManager"

    const-string/jumbo v1, "init: [ AppEventManager ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;->start()V

    goto :goto_0
.end method

.method public static register(Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;)V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->inited:Z

    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->init()V

    .line 156
    :cond_0
    return-void
.end method

.method public static unregister(Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;)V
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method
