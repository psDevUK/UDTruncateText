import React from 'react';
import { withComponentFeatures } from 'universal-dashboard';
import TextTruncate from 'react-text-truncate';

const UDTruncateText = props => {
  return (
    <TextTruncate
    key={props.id}
    line={props.line}
    element="span"
    truncateText={props.truncateText}
    text={props.text}
    textTruncateChild={<a href={props.href}>{props.readon}</a>}
/>
  );
  }

export default withComponentFeatures(UDTruncateText)