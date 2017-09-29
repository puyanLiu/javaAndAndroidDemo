.class public Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;
.super Ljava/lang/Object;
.source "H5ParamImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ParamImpl"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->c:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 24
    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->d:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public getLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/h5container/api/H5Param$ParamType;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->c:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    return-object v0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->d:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public setType(Lcom/alipay/mobile/h5container/api/H5Param$ParamType;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->c:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 45
    return-void
.end method

.method public unify(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 52
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object p1

    .line 58
    :cond_1
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->c:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    if-ne v0, v2, :cond_6

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    :goto_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 69
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    const/4 v0, 0x1

    .line 79
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 72
    :cond_4
    const-string/jumbo v1, "NO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 73
    const/4 v0, 0x0

    goto :goto_2

    .line 75
    :cond_5
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    .line 76
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    .line 80
    :cond_6
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->c:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    if-ne v0, v2, :cond_a

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_8
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 85
    :cond_9
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 86
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 92
    :cond_a
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->c:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    :goto_5
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 103
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 105
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 113
    :goto_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 98
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string/jumbo v1, "H5ParamImpl"

    const-string/jumbo v3, "Exception"

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_6

    .line 109
    :cond_c
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_12

    .line 110
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    .line 114
    :cond_d
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->DOUBLE:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->c:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v2, v0

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    :goto_7
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 125
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 127
    :try_start_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 135
    :goto_8
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_3

    .line 120
    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 128
    :catch_1
    move-exception v0

    .line 129
    const-string/jumbo v1, "H5ParamImpl"

    const-string/jumbo v4, "Exception"

    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_8

    .line 131
    :cond_f
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_10

    .line 132
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_8

    :cond_10
    move-wide v0, v2

    goto :goto_8

    :cond_11
    move-object v0, v1

    goto :goto_7

    :cond_12
    move v0, v2

    goto/16 :goto_6

    :cond_13
    move-object v0, v1

    goto/16 :goto_5

    :cond_14
    move v0, v2

    goto/16 :goto_2

    :cond_15
    move-object v0, v1

    goto/16 :goto_1
.end method
