.class public final Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;
.super Ljava/lang/Object;
.source "DataSetNotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverCall"
.end annotation


# instance fields
.field final a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

.field final b:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

.field final c:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;Lcom/alipay/mobile/personalbase/notification/DataContentObserver;Z)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    .line 255
    iput-object p2, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;->b:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    .line 256
    iput-boolean p3, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;->c:Z

    .line 257
    return-void
.end method
