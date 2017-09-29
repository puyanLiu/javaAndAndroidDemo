.class public Lcom/alipay/mobile/common/transportext/biz/appevent/EventInterfaceAdapter;
.super Ljava/lang/Object;
.source "EventInterfaceAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppLeaveEvent()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onAppResumeEvent()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onSeceenOffEvent()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public onSeceenOnEvent()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public onSyncInitChanged(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    return-void
.end method
