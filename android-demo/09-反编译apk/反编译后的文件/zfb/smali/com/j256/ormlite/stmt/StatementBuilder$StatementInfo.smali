.class public Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;
.super Ljava/lang/Object;
.source "StatementBuilder.java"


# instance fields
.field private final argList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final statement:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;->argList:Ljava/util/List;

    .line 259
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;->statement:Ljava/lang/String;

    .line 260
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getArgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;->argList:Ljava/util/List;

    return-object v0
.end method

.method public getStatement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;->statement:Ljava/lang/String;

    return-object v0
.end method
