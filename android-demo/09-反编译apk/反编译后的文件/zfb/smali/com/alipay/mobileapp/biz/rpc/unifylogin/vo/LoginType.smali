.class public final enum Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;
.super Ljava/lang/Enum;
.source "LoginType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

.field public static final enum alipay:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

.field public static final enum taobao:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    const-string/jumbo v1, "alipay"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;->alipay:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    .line 10
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    const-string/jumbo v1, "taobao"

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;->taobao:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    .line 7
    new-array v0, v4, [Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;->alipay:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;->taobao:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;->ENUM$VALUES:[Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;->value:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;->ENUM$VALUES:[Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;->value:I

    return v0
.end method
