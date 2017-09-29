.class public Lcom/alipay/mobile/common/amnet/biz/inner/NetTestAdapter;
.super Ljava/lang/Object;
.source "NetTestAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/amnet/NetTest;


# instance fields
.field private amnetNetworkDiagnoseListener:Lcom/alipay/mobile/common/amnet/api/AmnetNetworkDiagnoseListener;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/amnet/api/AmnetNetworkDiagnoseListener;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/inner/NetTestAdapter;->amnetNetworkDiagnoseListener:Lcom/alipay/mobile/common/amnet/api/AmnetNetworkDiagnoseListener;

    .line 16
    return-void
.end method


# virtual methods
.method public report(ZZZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/NetTestAdapter;->amnetNetworkDiagnoseListener:Lcom/alipay/mobile/common/amnet/api/AmnetNetworkDiagnoseListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/amnet/api/AmnetNetworkDiagnoseListener;->report(ZZZLjava/lang/String;)V

    .line 21
    return-void
.end method
