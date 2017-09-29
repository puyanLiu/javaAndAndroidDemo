.class public Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;
.super Ljava/lang/Object;
.source "PhoneCashierOrder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/a;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->a:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->b:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->c:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->d:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->e:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->g:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->h:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->f:Z

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->i:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->j:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->k:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->l:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->m:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->n:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->o:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->p:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->q:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->r:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->s:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->t:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->u:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->v:Ljava/lang/String;

    .line 333
    return-void

    .line 318
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAssignedChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getBizContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getBizIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getBizSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getBlackChannelList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getContactFastPayee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliverMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getForbidChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getOpType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOutTradeNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalFee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->m:Ljava/lang/String;

    return-object v0
.end method

.method public isShowBizResultPage()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->f:Z

    return v0
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->r:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->s:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setAssignedChannel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->q:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setBizContext(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->k:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setBizIdentity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->l:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setBizSubType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->e:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->d:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setBlackChannelList(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->t:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->j:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setContactFastPayee(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->v:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setDeliverMobile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->h:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setForbidChannel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->o:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setOpType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->p:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setOrderNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->a:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setOrderToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->b:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setOutTradeNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->i:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setPartnerID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->c:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setShowBizResultPage(Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->f:Z

    .line 121
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->u:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setTotalFee(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->g:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setTradeFrom(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->n:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->m:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "orderNo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", orderToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",partnerID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    const-string/jumbo v1, ",bizType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",bizSubType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",totalFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 339
    const-string/jumbo v1, ",deliverMobile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", outTradeNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 340
    const-string/jumbo v1, ", callBackUrl= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",showBizResultPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 341
    const-string/jumbo v1, ", biz_identity= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",trade_from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 342
    const-string/jumbo v1, ",forbid_channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",contactFastPayee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
