.class public final enum Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

.field public static final enum withchecktoken:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

.field public static final enum withface:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

.field public static final enum withinnertoken:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

.field public static final enum withlogintoken:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

.field public static final enum withmobilepwd:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

.field public static final enum withmsg:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

.field public static final enum without:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

.field public static final enum withpwd:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

.field public static final enum withsndpwd:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

.field public static final enum withsso:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

.field public static final enum withtoken:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const-string/jumbo v1, "withpwd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withpwd:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const-string/jumbo v1, "without"

    invoke-direct {v0, v1, v4, v5}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->without:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const-string/jumbo v1, "withtoken"

    invoke-direct {v0, v1, v5, v6}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withtoken:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const-string/jumbo v1, "withinnertoken"

    invoke-direct {v0, v1, v6, v7}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withinnertoken:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const-string/jumbo v1, "withmobilepwd"

    invoke-direct {v0, v1, v7, v8}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withmobilepwd:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const-string/jumbo v1, "withsso"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withsso:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const-string/jumbo v1, "withsndpwd"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withsndpwd:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const-string/jumbo v1, "withchecktoken"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withchecktoken:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const-string/jumbo v1, "withface"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withface:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const-string/jumbo v1, "withmsg"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withmsg:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const-string/jumbo v1, "withlogintoken"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withlogintoken:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withpwd:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->without:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withtoken:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withinnertoken:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withmobilepwd:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withsso:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withsndpwd:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withchecktoken:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withface:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withmsg:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->withlogintoken:Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->ENUM$VALUES:[Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;
    .locals 1

    const-class v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->ENUM$VALUES:[Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/LoginWithout;->value:I

    return v0
.end method
