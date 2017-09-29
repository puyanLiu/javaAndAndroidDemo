.class public Lcom/j256/ormlite/stmt/ColumnArg;
.super Ljava/lang/Object;
.source "ColumnArg.java"


# instance fields
.field private final columnName:Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/ColumnArg;->tableName:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/j256/ormlite/stmt/ColumnArg;->columnName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/j256/ormlite/stmt/ColumnArg;->tableName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/j256/ormlite/stmt/ColumnArg;->columnName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/j256/ormlite/stmt/ColumnArg;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/j256/ormlite/stmt/ColumnArg;->tableName:Ljava/lang/String;

    return-object v0
.end method
