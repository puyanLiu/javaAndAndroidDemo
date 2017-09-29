.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMmtpEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;
.source "Amnet.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V
    .locals 8

    .prologue
    .line 1992
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMmtpEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1993
    const/16 v6, 0xb

    const-string/jumbo v7, "-AMNET-ERR-MMTP"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;ILjava/lang/String;)V

    .line 1994
    return-void
.end method
