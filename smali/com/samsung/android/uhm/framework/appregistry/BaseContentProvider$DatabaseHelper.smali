.class Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BaseContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const-class v0, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string v0, "uhm.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 129
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 176
    const-string v0, "DROP TABLE IF EXISTS Apps"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const-string v0, "DROP TABLE IF EXISTS Device"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private upgradeToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 181
    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "upgradeToVersion4 starts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    const-string v1, "ALTER TABLE Device ADD COLUMN connected INTEGER DEFAULT 1;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    :try_start_1
    const-string v1, "ALTER TABLE Device ADD COLUMN device_fixed_name TEXT NOT NULL DEFAULT \'No name\';"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :goto_1
    :try_start_2
    const-string v1, "ALTER TABLE Device ADD COLUMN necklet_auto_connection TEXT NOT NULL DEFAULT \'null\';"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 200
    :goto_2
    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "upgradeToVersion4 ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/database/SQLException;
    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "connected column already exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v0

    .line 192
    .restart local v0    # "e":Landroid/database/SQLException;
    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "device_fixed_name  column already exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_2
    move-exception v0

    .line 198
    .restart local v0    # "e":Landroid/database/SQLException;
    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "necklet_auto_connection column already exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private upgradeToVersion5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 204
    sget-object v0, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "upgradeToVersion5 starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v0, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "upgradeToVersion5 ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 133
    sget-object v0, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, " CREATE TABLE Apps (_id INTEGER PRIMARY KEY AUTOINCREMENT, package_name  TEXT NOT NULL, app_name TEXT NOT NULL, bt_id TEXT NOT NULL, version  TEXT NOT NULL, image blob);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    const-string v0, " CREATE TABLE Device (_id INTEGER PRIMARY KEY AUTOINCREMENT, device_name  TEXT NOT NULL, device_fixed_name  TEXT NOT NULL, bt_id TEXT NOT NULL, package_name  TEXT NOT NULL, last_launch INTEGER TEXT NOT NULL, connected  INTEGER TEXT NOT NULL, necklet_auto_connection  TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 141
    sget-object v0, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDowngrade, oldVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 143
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 148
    .local v4, "startWhen":J
    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpgrade, oldVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-le p3, p2, :cond_2

    .line 152
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 153
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->upgradeToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 154
    add-int/lit8 p2, p2, 0x1

    .line 156
    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 157
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->upgradeToVersion5(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 172
    .local v2, "endWhen":J
    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UHM upgrade took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v2    # "endWhen":J
    :goto_1
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v6, "onUpgrade: SQLiteException, recreating db. "

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(oldVersion was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 168
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_2
    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v6, "Don\'t know how to downgrade. Will not touch database and hope they are compatible."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
