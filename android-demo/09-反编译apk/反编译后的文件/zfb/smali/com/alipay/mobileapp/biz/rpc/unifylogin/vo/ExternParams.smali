.class public final Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;
.super Lcom/squareup/wire/Message;
.source "ExternParams.java"


# static fields
.field public static final DEFAULT_KEY:Ljava/lang/String; = ""

.field public static final DEFAULT_VALUE:Ljava/lang/String; = ""

.field public static final TAG_KEY:I = 0x1

.field public static final TAG_VALUE:I = 0x2


# instance fields
.field public key:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 26
    if-nez p1, :cond_0

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->key:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->value:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    if-ne p1, p0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 51
    :cond_2
    check-cast p1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;

    .line 52
    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->key:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->value:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 52
    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;
    .locals 0

    .prologue
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 41
    :goto_0
    return-object p0

    .line 37
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->key:Ljava/lang/String;

    goto :goto_0

    .line 40
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->value:Ljava/lang/String;

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    iget v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->hashCode:I

    .line 59
    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->key:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 61
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 62
    iput v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->hashCode:I

    .line 64
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 60
    goto :goto_0
.end method
