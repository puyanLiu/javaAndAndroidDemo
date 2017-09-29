.class Lcom/alipay/security/mobile/util/LocalBroadcastManager$BroadcastRecord;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# instance fields
.field final intent:Landroid/content/Intent;

.field final receivers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    .line 59
    iput-object p2, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    .line 60
    return-void
.end method
