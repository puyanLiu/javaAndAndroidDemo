.class public Lcom/alipay/fido/message/OperationHeader;
.super Ljava/lang/Object;
.source "OperationHeader.java"


# static fields
.field public static OP_AUTH:Ljava/lang/String;

.field public static OP_DEREG:Ljava/lang/String;

.field public static OP_REG:Ljava/lang/String;


# instance fields
.field appID:Ljava/lang/String;

.field op:Ljava/lang/String;

.field serverData:Ljava/lang/String;

.field upv:Lcom/alipay/fido/message/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "Reg"

    sput-object v0, Lcom/alipay/fido/message/OperationHeader;->OP_REG:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "DeReg"

    sput-object v0, Lcom/alipay/fido/message/OperationHeader;->OP_DEREG:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "Auth"

    sput-object v0, Lcom/alipay/fido/message/OperationHeader;->OP_AUTH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/alipay/fido/message/Version;

    invoke-direct {v0}, Lcom/alipay/fido/message/Version;-><init>()V

    iput-object v0, p0, Lcom/alipay/fido/message/OperationHeader;->upv:Lcom/alipay/fido/message/Version;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/alipay/fido/message/Version;

    invoke-direct {v0}, Lcom/alipay/fido/message/Version;-><init>()V

    iput-object v0, p0, Lcom/alipay/fido/message/OperationHeader;->upv:Lcom/alipay/fido/message/Version;

    .line 55
    iput-object p1, p0, Lcom/alipay/fido/message/OperationHeader;->op:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/alipay/fido/message/OperationHeader;->appID:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    if-ne p0, p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 153
    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 155
    goto :goto_0

    .line 156
    :cond_3
    check-cast p1, Lcom/alipay/fido/message/OperationHeader;

    .line 157
    iget-object v2, p0, Lcom/alipay/fido/message/OperationHeader;->appID:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 158
    iget-object v2, p1, Lcom/alipay/fido/message/OperationHeader;->appID:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 159
    goto :goto_0

    .line 160
    :cond_4
    iget-object v2, p0, Lcom/alipay/fido/message/OperationHeader;->appID:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/fido/message/OperationHeader;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 161
    goto :goto_0

    .line 162
    :cond_5
    iget-object v2, p0, Lcom/alipay/fido/message/OperationHeader;->op:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 163
    iget-object v2, p1, Lcom/alipay/fido/message/OperationHeader;->op:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 164
    goto :goto_0

    .line 165
    :cond_6
    iget-object v2, p0, Lcom/alipay/fido/message/OperationHeader;->op:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/fido/message/OperationHeader;->op:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 166
    goto :goto_0

    .line 167
    :cond_7
    iget-object v2, p0, Lcom/alipay/fido/message/OperationHeader;->serverData:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 168
    iget-object v2, p1, Lcom/alipay/fido/message/OperationHeader;->serverData:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 169
    goto :goto_0

    .line 170
    :cond_8
    iget-object v2, p0, Lcom/alipay/fido/message/OperationHeader;->serverData:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/fido/message/OperationHeader;->serverData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 171
    goto :goto_0

    .line 172
    :cond_9
    iget-object v2, p0, Lcom/alipay/fido/message/OperationHeader;->upv:Lcom/alipay/fido/message/Version;

    if-nez v2, :cond_a

    .line 173
    iget-object v2, p1, Lcom/alipay/fido/message/OperationHeader;->upv:Lcom/alipay/fido/message/Version;

    if-eqz v2, :cond_0

    move v0, v1

    .line 174
    goto :goto_0

    .line 175
    :cond_a
    iget-object v2, p0, Lcom/alipay/fido/message/OperationHeader;->upv:Lcom/alipay/fido/message/Version;

    iget-object v3, p1, Lcom/alipay/fido/message/OperationHeader;->upv:Lcom/alipay/fido/message/Version;

    invoke-virtual {v2, v3}, Lcom/alipay/fido/message/Version;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 176
    goto :goto_0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/fido/message/OperationHeader;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/fido/message/OperationHeader;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getServerData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/fido/message/OperationHeader;->serverData:Ljava/lang/String;

    return-object v0
.end method

.method public getUpv()Lcom/alipay/fido/message/Version;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/fido/message/OperationHeader;->upv:Lcom/alipay/fido/message/Version;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/alipay/fido/message/OperationHeader;->appID:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 139
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/alipay/fido/message/OperationHeader;->op:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 140
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/alipay/fido/message/OperationHeader;->serverData:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/alipay/fido/message/OperationHeader;->upv:Lcom/alipay/fido/message/Version;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 142
    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/alipay/fido/message/OperationHeader;->appID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/alipay/fido/message/OperationHeader;->op:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/alipay/fido/message/OperationHeader;->serverData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/alipay/fido/message/OperationHeader;->upv:Lcom/alipay/fido/message/Version;

    invoke-virtual {v1}, Lcom/alipay/fido/message/Version;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alipay/fido/message/OperationHeader;->appID:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/fido/message/OperationHeader;->op:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setServerData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/fido/message/OperationHeader;->serverData:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setUpv(Lcom/alipay/fido/message/Version;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/fido/message/OperationHeader;->upv:Lcom/alipay/fido/message/Version;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OperationHeader [upv="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/fido/message/OperationHeader;->upv:Lcom/alipay/fido/message/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/fido/message/OperationHeader;->op:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/fido/message/OperationHeader;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/fido/message/OperationHeader;->serverData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
