.class public Lcom/alipay/mobile/beehive/eventbus/EventBusManager$EventHandlerWrapper;
.super Ljava/lang/Object;
.source "EventBusManager.java"


# instance fields
.field final event:Ljava/lang/Object;

.field final handler:Lcom/alipay/mobile/beehive/eventbus/EventHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$EventHandlerWrapper;->event:Ljava/lang/Object;

    .line 447
    iput-object p2, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$EventHandlerWrapper;->handler:Lcom/alipay/mobile/beehive/eventbus/EventHandler;

    .line 448
    return-void
.end method
