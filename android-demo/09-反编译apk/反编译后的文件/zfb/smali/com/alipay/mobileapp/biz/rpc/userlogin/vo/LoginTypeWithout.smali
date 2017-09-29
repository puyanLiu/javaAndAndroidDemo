.class public final enum Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

.field public static final enum alipay:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

.field public static final enum taobao:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

    const-string/jumbo v1, "alipay"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;->alipay:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

    const-string/jumbo v1, "taobao"

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;->taobao:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

    new-array v0, v4, [Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;->alipay:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;->taobao:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;->ENUM$VALUES:[Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;
    .locals 1

    const-class v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;->ENUM$VALUES:[Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginTypeWithout;->value:I

    return v0
.end method
