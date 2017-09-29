.class public Lcom/taobao/wswitch/model/XcmdGroupEntity;
.super Ljava/lang/Object;
.source "XcmdGroupEntity.java"


# instance fields
.field private g:Ljava/lang/String;

.field private i:J

.field private oi:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->i:J

    .line 51
    iput-object p3, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->g:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->r:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->v:Ljava/lang/String;

    .line 54
    iput p6, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->s:I

    .line 55
    iput-object p7, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->oi:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getI()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->i:J

    return-wide v0
.end method

.method public getOi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->oi:Ljava/lang/String;

    return-object v0
.end method

.method public getR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getS()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->s:I

    return v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->v:Ljava/lang/String;

    return-object v0
.end method

.method public isOiContainsId(Ljava/lang/Long;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    :cond_0
    move v0, v1

    .line 156
    :cond_1
    :goto_0
    return v0

    .line 146
    :cond_2
    iget-object v2, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->oi:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->oi:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 151
    array-length v5, v3

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v3, v2

    .line 152
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 156
    goto :goto_0
.end method

.method public setG(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->g:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setI(J)V
    .locals 0

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->i:J

    .line 70
    return-void
.end method

.method public setOi(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->oi:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setR(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->r:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setS(I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->s:I

    .line 126
    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/taobao/wswitch/model/XcmdGroupEntity;->v:Ljava/lang/String;

    .line 112
    return-void
.end method
