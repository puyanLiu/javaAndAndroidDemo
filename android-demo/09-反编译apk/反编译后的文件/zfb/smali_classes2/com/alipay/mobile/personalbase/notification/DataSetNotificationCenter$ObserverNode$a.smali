.class final Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;
.super Ljava/lang/Object;
.source "DataSetNotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

.field public final b:Z

.field final synthetic c:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;Lcom/alipay/mobile/personalbase/notification/DataContentObserver;Z)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;->c:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;->a:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    .line 119
    iput-boolean p3, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;->b:Z

    .line 120
    return-void
.end method
