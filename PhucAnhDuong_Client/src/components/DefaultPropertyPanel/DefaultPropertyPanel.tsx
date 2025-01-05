import React from 'react';
import { Code, Group, Paper, Stack, Text } from '@mantine/core';
import DateUtils from 'utils/DateUtils';

interface DefaultPropertyPanelProps {
  id?: string | number;
  createdAt?: string;
  updatedAt?: string;
  createdBy?: string;
  updatedBy?: string;
}

function DefaultPropertyPanel({
  id = '__',
  createdAt = '__/__/____',
  updatedAt = '__/__/____',
  createdBy = '1',
  updatedBy = '1',
}: DefaultPropertyPanelProps) {
  return (
    <Paper >
      
    </Paper>
  );
}

export default React.memo(DefaultPropertyPanel);
