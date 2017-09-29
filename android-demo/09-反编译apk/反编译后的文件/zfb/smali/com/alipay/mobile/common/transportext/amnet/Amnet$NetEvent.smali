.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;
.source "Amnet.java"


# instance fields
.field private connection:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V
    .locals 0

    .prologue
    .line 938
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;-><init>(J)V

    .line 939
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;->connection:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 940
    return-void
.end method


# virtual methods
.method public final owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;->connection:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    return-object v0
.end method
