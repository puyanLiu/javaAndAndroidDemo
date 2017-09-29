.class public final enum Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;
.super Ljava/lang/Enum;
.source "LoginWthPwd.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

.field public static final enum afterreg:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

.field public static final enum withchecktoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

.field public static final enum withface:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

.field public static final enum withinnertoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

.field public static final enum withlogintoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

.field public static final enum withmobilepwd:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

.field public static final enum withmsg:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

.field public static final enum without:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

.field public static final enum withpwd:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

.field public static final enum withsndpwd:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

.field public static final enum withsso:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

.field public static final enum withtoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 9
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const-string/jumbo v1, "withpwd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withpwd:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 10
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const-string/jumbo v1, "without"

    .line 13
    invoke-direct {v0, v1, v4, v5}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->without:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 14
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const-string/jumbo v1, "withtoken"

    .line 17
    invoke-direct {v0, v1, v5, v6}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withtoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 18
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const-string/jumbo v1, "withinnertoken"

    .line 21
    invoke-direct {v0, v1, v6, v7}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withinnertoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 22
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const-string/jumbo v1, "withmobilepwd"

    .line 25
    invoke-direct {v0, v1, v7, v8}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withmobilepwd:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 26
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const-string/jumbo v1, "withsso"

    .line 29
    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withsso:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 30
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const-string/jumbo v1, "withsndpwd"

    const/4 v2, 0x6

    .line 33
    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withsndpwd:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 34
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const-string/jumbo v1, "withchecktoken"

    const/4 v2, 0x7

    .line 37
    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withchecktoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 38
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const-string/jumbo v1, "withface"

    const/16 v2, 0x8

    .line 41
    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withface:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 42
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const-string/jumbo v1, "withmsg"

    const/16 v2, 0x9

    .line 45
    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withmsg:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 46
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const-string/jumbo v1, "withlogintoken"

    const/16 v2, 0xa

    .line 49
    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withlogintoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 50
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const-string/jumbo v1, "afterreg"

    const/16 v2, 0xb

    .line 53
    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->afterreg:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 7
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withpwd:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->without:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withtoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withinnertoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withmobilepwd:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withsso:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withsndpwd:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withchecktoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withface:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withmsg:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withlogintoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->afterreg:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->ENUM$VALUES:[Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->value:I

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->ENUM$VALUES:[Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->value:I

    return v0
.end method
