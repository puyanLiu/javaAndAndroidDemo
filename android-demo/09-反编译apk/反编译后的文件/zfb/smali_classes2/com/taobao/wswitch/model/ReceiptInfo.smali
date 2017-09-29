.class public Lcom/taobao/wswitch/model/ReceiptInfo;
.super Ljava/lang/Object;
.source "ReceiptInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3a45318ea9603655L


# instance fields
.field private e:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private i:Ljava/lang/Long;

.field private t:Ljava/lang/Long;

.field private v:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/taobao/wswitch/model/ReceiptInfo;->setG(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/taobao/wswitch/model/ReceiptInfo;->setV(Ljava/lang/Long;)V

    .line 17
    invoke-virtual {p0, p3}, Lcom/taobao/wswitch/model/ReceiptInfo;->setT(Ljava/lang/Long;)V

    .line 18
    invoke-virtual {p0, p4}, Lcom/taobao/wswitch/model/ReceiptInfo;->setI(Ljava/lang/Long;)V

    .line 19
    invoke-virtual {p0, p5}, Lcom/taobao/wswitch/model/ReceiptInfo;->setE(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/taobao/wswitch/model/ReceiptInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/taobao/wswitch/model/ReceiptInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getI()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/taobao/wswitch/model/ReceiptInfo;->i:Ljava/lang/Long;

    return-object v0
.end method

.method public getT()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/taobao/wswitch/model/ReceiptInfo;->t:Ljava/lang/Long;

    return-object v0
.end method

.method public getV()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/taobao/wswitch/model/ReceiptInfo;->v:Ljava/lang/Long;

    return-object v0
.end method

.method public setE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/taobao/wswitch/model/ReceiptInfo;->e:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setG(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/taobao/wswitch/model/ReceiptInfo;->g:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setI(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/taobao/wswitch/model/ReceiptInfo;->i:Ljava/lang/Long;

    .line 73
    return-void
.end method

.method public setT(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/taobao/wswitch/model/ReceiptInfo;->t:Ljava/lang/Long;

    .line 65
    return-void
.end method

.method public setV(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/taobao/wswitch/model/ReceiptInfo;->v:Ljava/lang/Long;

    .line 57
    return-void
.end method
