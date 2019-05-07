module Avram::Migrator
  private PRIMARY_KEY_TO_COLUMN_TYPE_MAPPING = {
    Avram::Migrator::PrimaryKeyType::Serial    => Int32,
    Avram::Migrator::PrimaryKeyType::BigSerial => Int64,
    Avram::Migrator::PrimaryKeyType::UUID      => ::UUID,
  }

  enum PrimaryKeyType
    Serial
    BigSerial
    UUID

    def db_type
      PRIMARY_KEY_TO_COLUMN_TYPE_MAPPING[self]
    end
  end
end
